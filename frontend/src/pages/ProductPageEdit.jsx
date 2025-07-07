import { useState, useEffect } from "react";
import { useNavigate, useParams } from "react-router-dom";
import { S3Client, PutObjectCommand } from "@aws-sdk/client-s3";

const BUCKET_NAME = 'arquitectura-software';
const REGION = 'us-east-2';
const s3Client = new S3Client({
  region: REGION,
  credentials: {
    accessKeyId: 'AKIA4MTWKTPKPSYSJS6Z',
    secretAccessKey: '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'
  }
});

const ProductEditForm = () => {
  const { id } = useParams();
  const navigate = useNavigate();
  const [product, setProduct] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [formData, setFormData] = useState({
    imagen: '',
    codigo: '',
    descripcion: ''
  });
  const [imagePreview, setImagePreview] = useState('');
  const [uploading, setUploading] = useState(false);

  useEffect(() => {
    const fetchProduct = async () => {
      try {
        const response = await fetch(`http://localhost:3000/products/${id}`);
        if (!response.ok) {
          throw new Error('Error al obtener el producto');
        }
        const result = await response.json();
        
        if (result.success && result.data) {
          const productData = result.data;
          setProduct(productData);
          setFormData({
            imagen: productData.imagen || '',
            codigo: productData.codigo || '',
            descripcion: productData.descripcion || ''
          });
          setImagePreview(productData.imagen || '');
        } else {
          throw new Error('Producto no encontrado');
        }
      } catch (err) {
        setError(err.message);
      } finally {
        setLoading(false);
      }
    };

    fetchProduct();
  }, [id]);

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData(prev => ({ ...prev, [name]: value }));
    
    // Actualizar la vista previa cuando cambia la URL de la imagen
    if (name === 'imagen') {
      setImagePreview(value);
    }
  };

  const fileToArrayBuffer = (file) => {
    return new Promise((resolve, reject) => {
        const reader = new FileReader();
        reader.onload = () => resolve(reader.result);
        reader.onerror = () => reject(reader.error);
        reader.readAsArrayBuffer(file);
    });
  };
  const handleImageUpload = async (e) => {
    const file = e.target.files[0];
    if (!file) return;
    
    setUploading(true);
    
    try {
      // Generar nombre único para el archivo
      const arrayBuffer = await fileToArrayBuffer(file);
      const fileName = `${Date.now()}-${file.name.replace(/\s+/g, '-')}`;
      const key = `${fileName}`;

      // Configurar el comando de subida a S3
      const command = new PutObjectCommand({
        Bucket: BUCKET_NAME,
        Key: key,
        Body: new Uint8Array(arrayBuffer), // <-- aquí
        ContentType: file.type,
        ACL: 'public-read'
      });

      // Subir el archivo a S3
      await s3Client.send(command);

      // Construir la URL pública de la imagen
      const imageUrl = `https://${BUCKET_NAME}.s3.${REGION}.amazonaws.com/${key}`;

      // Actualizar el formulario con la nueva URL
      setFormData(prev => ({ ...prev, imagen: imageUrl }));
      setImagePreview(imageUrl);
    } catch (err) {
      setError('Error al subir la imagen: ' + err.message);
    } finally {
      setUploading(false);
    }
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const response = await fetch(`http://localhost:3000/products/${id}`, {
        method: 'PUT',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          ...product,
          ...formData
        })
      });

      if (!response.ok) {
        throw new Error('Error al actualizar el producto');
      }

      const result = await response.json();
      if (result.success) {
        navigate('/products');
      } else {
        throw new Error(result.message || 'Error al actualizar el producto');
      }
    } catch (err) {
      setError(err.message);
    }
  };

  if (loading) {
    return (
      <div className="flex justify-center items-center h-screen">
        <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-blue-500"></div>
      </div>
    );
  }

  if (error) {
    return (
      <div className="container mx-auto px-4 py-8">
        <div className="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative" role="alert">
          <strong className="font-bold">Error: </strong>
          <span className="block sm:inline">{error}</span>
          <button 
            onClick={() => navigate('/products')}
            className="mt-4 bg-gray-600 hover:bg-gray-700 text-white font-bold py-2 px-4 rounded"
          >
            Volver a Productos
          </button>
        </div>
      </div>
    );
  }

  if (!product) {
    return (
      <div className="container mx-auto px-4 py-8">
        <div className="bg-yellow-100 border border-yellow-400 text-yellow-700 px-4 py-3 rounded relative" role="alert">
          <strong className="font-bold">Advertencia: </strong>
          <span className="block sm:inline">Producto no encontrado</span>
          <button 
            onClick={() => navigate('/products')}
            className="mt-4 bg-gray-600 hover:bg-gray-700 text-white font-bold py-2 px-4 rounded"
          >
            Volver a Productos
          </button>
        </div>
      </div>
    );
  }

  return (
    <div className="container mx-auto px-4 py-8">
      <div className="flex justify-between items-center mb-8">
        <h1 className="text-3xl font-bold text-gray-800">Editar Producto: {product.titulo}</h1>
        <button
          onClick={() => navigate('/products')}
          className="bg-gray-600 hover:bg-gray-700 text-white font-bold py-2 px-4 rounded-lg flex items-center transition-colors"
        >
          Volver a Productos
        </button>
      </div>

      <div className="max-w-3xl mx-auto bg-white p-8 rounded-lg shadow-lg">
        <form onSubmit={handleSubmit}>
          <div className="mb-6">
            <label className="block text-gray-700 text-sm font-bold mb-2" htmlFor="imagen">
              Imagen del Producto
            </label>
            
            <div className="mb-4">
              <label className="block text-gray-700 text-sm font-medium mb-2" htmlFor="file-upload">
                Subir nueva imagen
              </label>
              <div className="flex items-center">
                <input
                  id="file-upload"
                  name="file-upload"
                  type="file"
                  accept="image/*"
                  onChange={handleImageUpload}
                  className="sr-only"
                />
                <label
                  htmlFor="file-upload"
                  className="relative cursor-pointer bg-white rounded-md font-medium text-blue-600 hover:text-blue-500 focus-within:outline-none"
                >
                  <span className="bg-blue-100 hover:bg-blue-200 text-blue-700 font-medium py-2 px-4 rounded-lg flex items-center">
                    <svg xmlns="http://www.w3.org/2000/svg" className="h-5 w-5 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M7 16a4 4 0 01-.88-7.903A5 5 0 1115.9 6L16 6a5 5 0 011 9.9M15 13l-3-3m0 0l-3 3m3-3v12" />
                    </svg>
                    Seleccionar archivo
                  </span>
                </label>
                <p className="ml-4 text-sm text-gray-500">PNG, JPG, GIF hasta 5MB</p>
              </div>
              {uploading && (
                <div className="mt-2 text-blue-600 flex items-center">
                  <div className="animate-spin rounded-full h-4 w-4 border-t-2 border-b-2 border-blue-500 mr-2"></div>
                  Subiendo imagen...
                </div>
              )}
            </div>
            
            <div className="mt-4">
              <label className="block text-gray-700 text-sm font-bold mb-2" htmlFor="imagen">
                O ingresar URL de la imagen
              </label>
              <input
                id="imagen"
                name="imagen"
                type="text"
                value={formData.imagen}
                onChange={handleChange}
                className="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                placeholder="https://ejemplo.com/imagen.jpg"
              />
            </div>
            
            {(imagePreview || formData.imagen) && (
              <div className="mt-6">
                <p className="text-sm text-gray-600 mb-2 font-medium">Vista previa:</p>
                <div className="flex justify-center">
                  <img 
                    src={imagePreview || formData.imagen} 
                    alt="Vista previa" 
                    className="max-w-full h-48 object-contain border rounded-lg"
                  />
                </div>
              </div>
            )}
          </div>

          <div className="mb-6">
            <label className="block text-gray-700 text-sm font-bold mb-2" htmlFor="codigo">
              Código del Producto
            </label>
            <input
              id="codigo"
              name="codigo"
              type="text"
              value={formData.codigo}
              onChange={handleChange}
              className="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
              placeholder="Ej: PROD-001"
              required
            />
          </div>

          <div className="mb-6">
            <label className="block text-gray-700 text-sm font-bold mb-2" htmlFor="descripcion">
              Descripción
            </label>
            <textarea
              id="descripcion"
              name="descripcion"
              value={formData.descripcion}
              onChange={handleChange}
              rows="5"
              className="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
              placeholder="Descripción detallada del producto..."
              required
            ></textarea>
          </div>

          <div className="mb-6">
            <label className="block text-gray-700 text-sm font-bold mb-2">
              Información adicional
            </label>
            <div className="bg-gray-50 p-4 rounded-lg">
              <div className="grid grid-cols-2 gap-4">
                <div>
                  <p className="text-sm text-gray-600">Título:</p>
                  <p className="font-medium">{product.titulo}</p>
                </div>
                <div>
                  <p className="text-sm text-gray-600">Precio:</p>
                  <p className="font-medium">${product.precio?.toFixed(2) || '0.00'}</p>
                </div>
                <div>
                  <p className="text-sm text-gray-600">Existencias:</p>
                  <p className="font-medium">{product.existencias}</p>
                </div>
                <div>
                  <p className="text-sm text-gray-600">Estado:</p>
                  <p className="font-medium">
                    {product.existencias > 0 
                      ? <span className="text-green-600">Disponible</span> 
                      : <span className="text-red-600">Agotado</span>}
                  </p>
                </div>
              </div>
            </div>
          </div>

          <div className="flex items-center justify-between border-t pt-6">
            <button
              type="button"
              onClick={() => navigate('/products')}
              className="bg-gray-500 hover:bg-gray-600 text-white font-bold py-3 px-6 rounded-lg focus:outline-none focus:shadow-outline flex items-center"
            >
              <svg xmlns="http://www.w3.org/2000/svg" className="h-5 w-5 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M10 19l-7-7m0 0l7-7m-7 7h18" />
              </svg>
              Cancelar
            </button>
            <button
              type="submit"
              className="bg-blue-600 hover:bg-blue-700 text-white font-bold py-3 px-6 rounded-lg focus:outline-none focus:shadow-outline flex items-center"
            >
              <svg xmlns="http://www.w3.org/2000/svg" className="h-5 w-5 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" />
              </svg>
              Guardar Cambios
            </button>
          </div>
        </form>
      </div>
    </div>
  );
};

export default ProductEditForm;