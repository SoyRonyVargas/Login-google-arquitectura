const mysql = require('mysql2/promise');
const axios = require('axios');
const { S3Client, PutObjectCommand } = require('@aws-sdk/client-s3');
const path = require('path');

// Configuración de AWS S3
const BUCKET_NAME = 'arquitectura-software';
const REGION = 'us-east-2';

const s3 = new S3Client({
    region: REGION,
    credentials: {
        accessKeyId: 'AKIA4MTWKTPKPSYSJS6Z',
        secretAccessKey: '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'
    }
});

// Configuración de MySQL
const dbConfig = {
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'alibabeto'
};

(async () => {
    const connection = await mysql.createConnection(dbConfig);

    const [rows] = await connection.execute('SELECT id, imagen FROM productos');

    for (const row of rows) {
        const { id, imagen } = row;

        if (!imagen || imagen.trim() === '') {
            console.log(`🟡 Producto ${id} sin imagen, se omite.`);
            continue;
        }

        try {
            console.log(`⬇️ Descargando imagen de: ${imagen}`);
            const response = await axios.get(imagen, { responseType: 'arraybuffer' });

            const fileName = path.basename(imagen.split('?')[0]);
            const s3Key = `${fileName}`;
            const s3Url = `https://${BUCKET_NAME}.s3.${REGION}.amazonaws.com/${s3Key}`;

            const uploadCommand = new PutObjectCommand({
                Bucket: BUCKET_NAME,
                Key: s3Key,
                Body: response.data,
                ContentType: response.headers['content-type'] || 'image/jpeg'
            });

            await s3.send(uploadCommand);
            console.log(`✅ Imagen subida: ${s3Url}`);

            // Actualizar el campo en la base de datos
            await connection.execute(
                'UPDATE productos SET imagen = ? WHERE id = ?',
                [s3Url, id]
            );
            console.log(`📝 Actualizado producto ${id} con nueva URL`);
        } catch (err) {
            console.error(`❌ Error con producto ${id}: ${err.message}`);
        }
    }

    await connection.end();
})();
