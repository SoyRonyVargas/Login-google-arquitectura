import { useNavigate } from 'react-router-dom'

const useAuth = () => {
    const navigate = useNavigate()

    const validateToken = async () => {
        try {
            const response = await fetch('http://localhost:3000/auth/validateToken', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'Authorization': `Bearer ${localStorage.getItem('AUTH_SESSION_TOKEN')}`
                }
            })

            const data = await response.json()

            if (!data.valido) {
                navigate('/login')
            }
            
        } catch (error) {
            if (error.response?.data?.msg) {
                clearSession()
            }
        }
    }

    const handleSetSession = (token, usuario) => {
        try {
            // Convertir el ID del rol a número si es necesario
            if (usuario?.Rol?.id) {
                usuario.Rol.id = Number(usuario.Rol.id)
            }

            // Guardar en localStorage
            localStorage.setItem('AUTH_SESSION_TOKEN', token)
            localStorage.setItem('AUTH_SESSION_USER', JSON.stringify(usuario))

        } catch (error) {
            console.error('Error al establecer sesión:', error)
        }
    }

    const clearSession = () => {
        localStorage.removeItem('AUTH_SESSION_TOKEN')
        localStorage.removeItem('AUTH_SESSION_USER')
    }

    const handleLogout = () => {
        clearSession()
        navigate('/login')
    }

    return {
        handleLogout,
        validateToken,
        handleSetSession
    }
}

export default useAuth