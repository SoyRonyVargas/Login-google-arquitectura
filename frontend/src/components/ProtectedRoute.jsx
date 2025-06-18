import { Navigate } from 'react-router-dom';

const ProtectedRoute = ({ children }) => {
  // Verificar si el usuario está autenticado
  const isAuthenticated = localStorage.getItem('AUTH_SESSION_TOKEN') !== null;

  if (!isAuthenticated) {
    // Si no está autenticado, redirigir al login
    return <Navigate to="/login" replace />;
  }

  // Si está autenticado, renderizar el componente hijo
  return children;
};

export default ProtectedRoute;