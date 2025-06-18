const pool = require('../config/database');

const getProducts = async (req, res) => {
  try {
    // Consulta SQL para obtener productos no eliminados
    const query = `
      SELECT 
        id, status, imagen, codigo, titulo, 
        descripcion, precio, existencias, categoriaID, 
        CreatedDate 
      FROM productos 
      WHERE is_deleted = 0
      ORDER BY CreatedDate ASC
    `;
    
    const [products] = await pool.query(query);
    
    res.json({
      success: true,
      count: products.length,
      data: products
    });

  } catch (error) {
    console.error('Error al obtener productos:', error);
    res.status(500).json({ 
      success: false,
      message: 'Error al obtener los productos' 
    });
  }
};

const getProductById = async (req, res) => {
  const { id } = req.params;

  try {
    const [rows] = await pool.query(
      `SELECT 
        id, status, imagen, codigo, titulo, 
        descripcion, precio, existencias, categoriaID, 
        CreatedDate 
       FROM productos 
       WHERE id = ? AND is_deleted = 0`,
      [id]
    );

    if (rows.length === 0) {
      return res.status(404).json({ 
        success: false,
        message: 'Producto no encontrado' 
      });
    }

    res.json({
      success: true,
      data: rows[0]
    });

  } catch (error) {
    console.error('Error al obtener producto:', error);
    res.status(500).json({ 
      success: false,
      message: 'Error al obtener el producto' 
    });
  }
};

module.exports = {
  getProducts,
  getProductById
};