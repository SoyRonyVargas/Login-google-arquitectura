import { GoogleLogin, useGoogleLogin } from "@react-oauth/google"
import useLogin from "../hooks/useLogin"
import { useEffect } from "react"

const LoginForm = () => {
    const { 
        handleSubmit, 
        onInputChange, 
        formState, 
        isLoading, 
        errors,
        handleGoogleLogin ,
        sessionData
    } = useLogin()


    const login = useGoogleLogin({
        onSuccess: handleGoogleLogin,
        flow: 'implicit',
    });
    // Efecto para manejar el auto-click después de login exitoso
    useEffect(() => {
        const storedUser = localStorage.getItem('AUTH_SESSION_USER')
        console.log('Stored User:', storedUser)
        if (storedUser) {
            // Si ya hay un usuario en localStorage, intentamos autenticar con Google
            // debugger
            login();
        }
    }, [sessionData])

    return (
        <>
            <form onSubmit={handleSubmit} method="post" action="/api/login">
                <div className='mb-3'>
                    <label
                        className="text-gray-600 font-bold inline-block pb-2"
                        htmlFor="email"
                    >
                        Correo
                    </label>
                    <input
                        className="border border-gray-400 focus:outline-slate-400 rounded-md w-full shadow-sm px-5 py-2"
                        type="email"
                        name="correo"
                        placeholder="ejemplo@correo.com"
                        onChange={onInputChange}
                        value={formState.correo}
                    />
                </div>
                <div className='mb-3'>
                    <label
                        className="text-gray-600 font-bold inline-block pb-2"
                        htmlFor="password"
                    >
                        Contraseña
                    </label>
                    <input
                        className="border border-gray-400 focus:outline-slate-400 rounded-md w-full shadow-sm px-5 py-2"
                        type="password"
                        name="password"
                        placeholder="******"
                        onChange={onInputChange}
                        value={formState.password}
                    />
                </div>

                {errors !== null && (
                    <p className="mt-2 text-red-500 font-bold text-md dark:text-red-500">
                        {errors.msg}
                    </p>
                )}

                <div className="flex flex-col mb-3">
                    <div className="w-full">
                        <a className="font-bold text-blue-600" href="">
                            ¿Olvidaste tu contraseña?
                        </a>
                    </div>
                </div>

                <div>
                    <button
                        disabled={isLoading}
                        type="submit"
                        className="bg-blue-600 w-full pt-2 pr-5 pb-2 pl-5 rounded-md text-white font-bold cursor-pointer mb-3 hover:bg-blue-700 transition-colors"
                    >
                        {isLoading ? 'Autenticando...' : 'Iniciar Sesión'}
                    </button>
                </div>

                <div className="hidden">
                    {/* Botón de Google oculto para el auto-click */}
                    <GoogleLogin
                        onSuccess={handleGoogleLogin}
                        onError={() => {
                            console.log('Login con Google falló')
                            // setErrors({
                            //     msg: 'Error al autenticar con Google'
                            // })
                        }}
                    />
                </div>

                {/* <div className="mt-4 mb-4">
                    <GoogleLogin
                        onSuccess={handleGoogleLogin}
                        onError={() => {
                            // setErrors({
                            //     msg: 'Error al autenticar con Google'
                            // })
                        }}
                        theme="filled_blue"
                        size="large"
                        text="signin_with"
                        shape="rectangular"
                        width="100%"
                    />
                </div> */}

                {/* <div className="flex flex-col mt-3 mb-3">
                    <div className="w-full">
                        ¿Aún no tienes una cuenta?
                        <a className="font-bold ml-2 text-blue-600" href="/registro">
                            <strong>Regístrate aquí</strong>
                        </a>
                    </div>
                </div> */}
            </form>
        </>
    )
}

export default LoginForm