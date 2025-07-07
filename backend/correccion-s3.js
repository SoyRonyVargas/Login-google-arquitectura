const mysql = require('mysql2/promise');
const { S3Client, HeadObjectCommand } = require('@aws-sdk/client-s3');
const path = require('path');

const BUCKET_NAME = 'arquitectura-software';
const REGION = 'us-east-2';
const S3_FOLDER = 'productos'; // carpeta dentro del bucket donde están las imágenes
const LOCAL_PREFIX = 'http://localhost:3000/uploads/';

// Cliente de S3
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
    user: 'tu_usuario_mysql',
    password: 'tu_contraseña_mysql',
    database: 'tu_base_de_datos'
};

(async () => {
    const connection = await mysql.createConnection(dbConfig);

    const [rows] = await connection.execute('SELECT id, imagen FROM productos');

    for (const row of rows) {
        const { id, imagen } = row;

        if (!imagen || !imagen.startsWith(LOCAL_PREFIX)) {
            continue;
        }

        const fileName = path.basename(imagen);
        const s3Key = `${fileName}`;
        const s3Url = `https://${BUCKET_NAME}.s3.${REGION}.amazonaws.com/${s3Key}`;

        try {
            // Verificar si existe en el bucket
            await s3.send(new HeadObjectCommand({ Bucket: BUCKET_NAME, Key: s3Key }));

            // Actualizar en la base de datos
            await connection.execute(
                'UPDATE productos SET imagen = ? WHERE id = ?',
                [s3Url, id]
            );
            console.log(`✅ Actualizado producto ${id} -> ${s3Url}`);
        } catch (err) {
            if (err.name === 'NotFound') {
                console.warn(`🟡 Imagen ${fileName} no existe en S3, se omite`);
            } else {
                console.error(`❌ Error verificando imagen para producto ${id}:`, err.message);
            }
        }
    }

    await connection.end();
})();
