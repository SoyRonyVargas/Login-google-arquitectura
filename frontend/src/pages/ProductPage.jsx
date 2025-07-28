import { useState, useEffect, useRef } from "react";
import { useParams, Link } from "react-router-dom";

const ProductViewPage = () => {
  const { id } = useParams();
  const [product, setProduct] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [activeVideoIndex, setActiveVideoIndex] = useState(0);
  const [fade, setFade] = useState(false);
  const intervalRef = useRef(null);
  const heroRef = useRef(null);

  useEffect(() => {
    const fetchProduct = async () => {
      try {
        const response = await fetch(`http://localhost:3000/products/${id}`);
        if (!response.ok) {
          throw new Error('Error al obtener el producto');
        }
        const result = await response.json();
        
        if (result.success && result.data) {
          setProduct(result.data);
          if (result.data.videos && result.data.videos.length > 0) {
            startVideoRotation(result.data.videos);
          }
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

    return () => {
      if (intervalRef.current) {
        clearInterval(intervalRef.current);
      }
    };
  }, [id]);

  const startVideoRotation = (videos) => {
    if (intervalRef.current) {
      clearInterval(intervalRef.current);
    }

    intervalRef.current = setInterval(() => {
      setFade(true);
      setTimeout(() => {
        setActiveVideoIndex((prevIndex) => 
          prevIndex === videos.length - 1 ? 0 : prevIndex + 1
        );
        setFade(false);
      }, 1000); // Duración del fade out
    }, 5000); // Cambia cada 5 segundos
  };

  const handleVideoSelect = (index) => {
    if (intervalRef.current) {
      clearInterval(intervalRef.current);
    }
    
    setFade(true);
    setTimeout(() => {
      setActiveVideoIndex(index);
      setFade(false);
      startVideoRotation(product.videos);
    }, 500);
  };

  if (loading) {
    return (
      <div className="flex justify-center items-center h-screen bg-gray-50">
        <div className="animate-spin rounded-full h-16 w-16 border-t-2 border-b-2 border-blue-600"></div>
      </div>
    );
  }

  if (error) {
    return (
      <div className="container mx-auto px-4 py-8">
        <div className="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative" role="alert">
          <strong className="font-bold">Error: </strong>
          <span className="block sm:inline">{error}</span>
          <Link 
            to="/products" 
            className="mt-4 inline-block bg-gray-600 hover:bg-gray-700 text-white font-bold py-2 px-4 rounded"
          >
            Volver a Productos
          </Link>
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
          <Link 
            to="/products" 
            className="mt-4 inline-block bg-gray-600 hover:bg-gray-700 text-white font-bold py-2 px-4 rounded"
          >
            Volver a Productos
          </Link>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50">
      {/* Hero Section con videos en transición fade */}
      <div 
        ref={heroRef}
        className="relative h-screen max-h-[80vh] overflow-hidden"
      >
        {product.videos && product.videos.length > 0 ? (
          product.videos.map((videoUrl, index) => (
            <div 
              key={index}
              className={`absolute inset-0 transition-opacity duration-1000 ${index === activeVideoIndex ? (fade ? 'opacity-0' : 'opacity-100') : 'opacity-0'}`}
            >
              <video
                autoPlay
                muted
                loop
                className="w-full h-full object-cover"
              >
                <source src={videoUrl} type="video/mp4" />
              </video>
              <div className="absolute inset-0 bg-black/40 bg-opacity-40 flex items-center justify-center">
                <div className="text-center px-4">
                  <h1 className="text-5xl md:text-7xl font-bold text-white mb-6 animate-fadeIn">
                    {product.titulo}
                  </h1>
                  <p className="text-xl md:text-2xl text-white max-w-2xl mx-auto">
                    {product.descripcion?.substring(0, 150)}{product.descripcion?.length > 150 ? '...' : ''}
                  </p>
                </div>
              </div>
            </div>
          ))
        ) : (
          <div className="absolute inset-0 bg-gradient-to-r from-blue-900 to-purple-900 flex items-center justify-center">
            <div className="text-center px-4">
              <h1 className="text-5xl md:text-7xl font-bold text-white mb-6">
                {product.titulo}
              </h1>
              <p className="text-xl md:text-2xl text-white max-w-2xl mx-auto">
                {product.descripcion?.substring(0, 150)}{product.descripcion?.length > 150 ? '...' : ''}
              </p>
            </div>
          </div>
        )}

        {/* Indicadores de video */}
        {product.videos && product.videos.length > 1 && (
          <div className="absolute bottom-8 left-0 right-0 flex justify-center space-x-2">
            {product.videos.map((_, index) => (
              <button
                key={index}
                onClick={() => handleVideoSelect(index)}
                className={`w-3 h-3 rounded-full transition-all ${index === activeVideoIndex ? 'bg-white w-6' : 'bg-white bg-opacity-50'}`}
                aria-label={`Ir al video ${index + 1}`}
              />
            ))}
          </div>
        )}
      </div>

      {/* Contenido principal */}
      <div className="container mx-auto px-4 py-12">
        <div className="flex flex-col lg:flex-row gap-12">
          {/* Sección izquierda - Imagen y detalles del producto */}
          <div className="lg:w-1/2 bg-white rounded-xl shadow-lg overflow-hidden">
            <div className="p-8">
              {product.imagen ? (
                <div className="relative group">
                  <img 
                    src={product.imagen} 
                    alt={product.titulo} 
                    className="w-full h-auto max-h-96 object-contain rounded-lg shadow-md transform group-hover:scale-[1.02] transition-transform duration-300"
                  />
                  <div className="absolute top-4 right-4 bg-blue-600 text-white px-3 py-1 rounded-full text-xs font-bold shadow-lg">
                    {product.existencias > 0 ? 'Disponible' : 'Agotado'}
                  </div>
                </div>
              ) : (
                <div className="bg-gray-200 border-2 border-dashed border-gray-400 rounded-xl w-full h-64 flex items-center justify-center text-gray-500">
                  Imagen no disponible
                </div>
              )}
              
              <div className="mt-8">
                <h2 className="text-2xl font-bold text-gray-800 mb-6 border-b pb-2">Detalles del Producto</h2>
                <div className="grid grid-cols-2 gap-6">
                  <div className="bg-gray-50 p-4 rounded-lg">
                    <p className="text-sm text-gray-600">Código:</p>
                    <p className="font-medium text-lg">{product.codigo || 'N/A'}</p>
                  </div>
                  <div className="bg-gray-50 p-4 rounded-lg">
                    <p className="text-sm text-gray-600">Precio:</p>
                    <p className="font-medium text-lg text-green-600">${product.precio?.toFixed(2) || '0.00'}</p>
                  </div>
                  <div className="bg-gray-50 p-4 rounded-lg">
                    <p className="text-sm text-gray-600">Existencias:</p>
                    <p className="font-medium text-lg">{product.existencias}</p>
                  </div>
                  <div className="bg-gray-50 p-4 rounded-lg">
                    <p className="text-sm text-gray-600">Estado:</p>
                    <p className={`font-medium text-lg ${product.existencias > 0 ? 'text-green-600' : 'text-red-600'}`}>
                      {product.existencias > 0 ? 'Disponible' : 'Agotado'}
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>

          {/* Sección derecha - Videos en collage */}
          <div className="lg:w-1/2">
            <div className="bg-white rounded-xl shadow-lg overflow-hidden p-8">
              <h2 className="text-3xl font-bold text-gray-800 mb-8">Galería de Videos</h2>
              
              {product.videos && product.videos.length > 0 ? (
                <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                  {product.videos.map((videoUrl, index) => (
                    <div 
                      key={index}
                      className={`relative rounded-xl overflow-hidden cursor-pointer transition-all ${index === activeVideoIndex ? 'ring-4 ring-blue-500' : 'hover:ring-2 hover:ring-blue-300'}`}
                      onClick={() => handleVideoSelect(index)}
                    >
                      <div className="aspect-video bg-black">
                        <video
                          muted
                          className="w-full h-full object-cover"
                          poster={product.imagen}
                        >
                          <source src={videoUrl} type="video/mp4" />
                        </video>
                      </div>
                      <div className="absolute inset-0 flex items-center justify-center bg-black bg-opacity-0 hover:bg-opacity-20 transition-all">
                        <div className={`p-2 rounded-full ${index === activeVideoIndex ? 'bg-blue-500' : 'bg-black bg-opacity-50'} transition-all`}>
                          <svg xmlns="http://www.w3.org/2000/svg" className="h-8 w-8 text-white" viewBox="0 0 20 20" fill="currentColor">
                            <path fillRule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zM9.555 7.168A1 1 0 008 8v4a1 1 0 001.555.832l3-2a1 1 0 000-1.664l-3-2z" clipRule="evenodd" />
                          </svg>
                        </div>
                      </div>
                      <div className="absolute bottom-3 left-3 bg-black bg-opacity-70 text-white text-sm px-2 py-1 rounded">
                        Video {index + 1}
                      </div>
                    </div>
                  ))}
                </div>
              ) : (
                <div className="bg-gray-100 rounded-lg p-8 text-center">
                  <svg xmlns="http://www.w3.org/2000/svg" className="h-16 w-16 mx-auto text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M15 10l4.553-2.276A1 1 0 0121 8.618v6.764a1 1 0 01-1.447.894L15 14M5 18h8a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v8a2 2 0 002 2z" />
                  </svg>
                  <h3 className="mt-4 text-lg font-medium text-gray-700">No hay videos disponibles</h3>
                  <p className="mt-1 text-gray-500">Este producto no tiene videos asociados.</p>
                </div>
              )}
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default ProductViewPage;