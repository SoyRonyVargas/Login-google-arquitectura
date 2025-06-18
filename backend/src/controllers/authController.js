const pool = require('../config/database');

const login = async (req, res) => {
  const { correo, password } = req.body;

  if (!correo || !password) {
    return res.status(400).json({ 
      success: false,
      message: 'Correo y contraseña son requeridos' 
    });
  }

  try {
    const [rows] = await pool.query(
      'SELECT * FROM usuarios WHERE correo = ? AND contraseña = ?',
      [correo, password]
    );

    if (rows.length === 0) {
      return res.status(401).json({ 
        success: false,
        message: 'Credenciales incorrectas' 
      });
    }

    const usuario = rows[0];
    // Eliminamos el password de la respuesta por seguridad
    delete usuario.password;

    res.json({
      success: true,
      message: 'Login exitoso',
      token: 'token_simulado', // En producción usa JWT
      usuario
    });

  } catch (error) {
    console.error('Error en login:', error);
    res.status(500).json({ 
      success: false,
      message: 'Error en el servidor' 
    });
  }
};

module.exports = { login };