import { useNavigate } from 'react-router-dom'
import { useState } from 'react'
import useAuth from './useAuth'

const useLogin = () => {
  const navigate = useNavigate()
  const [isLoading, setLoading] = useState(false)
  const [errors, setErrors] = useState(null)
  const { handleSetSession, clearSession } = useAuth()
  const [ sessionData , setSessionData ] = useState()
  const [formState, setFormState] = useState({
    correo: '',
    password: ''
  })

  const onInputChange = (event) => {
    const { name, value } = event.target
    setFormState({
      ...formState,
      [name]: value
    })
  }
  
  const handleGoogleInfo = async (tokenResponse) => {
     const res = await fetch('https://www.googleapis.com/oauth2/v3/userinfo', {
        headers: {
          Authorization: `Bearer ${tokenResponse}`,
        },
      });
      const userInfo = await res.json();
      return userInfo
  };
  const handleGoogleLogin = async (credentialResponse) => {
    try {
      console.log('Google Credential Response:', credentialResponse);
      const decoded = await handleGoogleInfo(credentialResponse.access_token);

      const googleEmail = decoded.email
      
      // Obtener usuario del localStorage
      const storedUser = JSON.parse(localStorage.getItem('AUTH_SESSION_USER'))
      
      if (storedUser && storedUser.correo === googleEmail) {
        // Redirigir a productos si el correo coincide
        navigate('/products')
      } else {
        // Limpiar sesión y mostrar error si no coincide
        clearSession()
        setErrors({
          msg: 'El correo de Google no coincide con tu cuenta registrada'
        })
      }
    } catch (error) {
      console.error('Error al decodificar token de Google:', error)
       setErrors({
          msg: 'El correo de Google no coincide con tu cuenta registrada'
      })
    }
  }

  const handleSubmit = async (event) => {
    event.preventDefault()
    
    try {
      setErrors(null)
      setLoading(true)
      
      const response = await fetch('http://localhost:3000/auth/login', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          correo: formState.correo,
          password: formState.password
        })
      })

      const data = await response.json()

      if (!response.ok) {
        throw new Error(data.message || 'Error en la autenticación')
      }

      handleSetSession(data.token, data.usuario)
      setSessionData(data.usuario)
      // Abrir automáticamente el login de Google después de autenticación exitosa
      // Esto se manejará en el componente ya que el botón de Google debe ser clickeado por el usuario
      
      await new Promise(resolve => setTimeout(resolve, 2000))
      
      setLoading(false)
      // navigate('/products')
      
    } catch (err) {
      await new Promise(resolve => setTimeout(resolve, 1000))
      setLoading(false)

      if (err.message) {
        setErrors({
          msg: err.message
        })
      } else {
        setErrors({
          msg: 'Error desconocido al intentar iniciar sesión'
        })
      }
    }
  }

  return {
    errors,
    formState,
    sessionData,
    isLoading,
    onInputChange,
    handleSubmit,
    handleGoogleLogin
  }
}

export default useLogin