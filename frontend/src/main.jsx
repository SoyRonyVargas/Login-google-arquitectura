import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
import App from './App.jsx'
import { GoogleOAuthProvider } from '@react-oauth/google'

createRoot(document.getElementById('root')).render(
  <GoogleOAuthProvider clientId="627046235150-fjqkmnqhfpaadd4j4i4lkpb4h1a91rv5.apps.googleusercontent.com">
    <App />
  </GoogleOAuthProvider>,
)
