const express = require('express');
const router = express.Router();
const { getProducts, getProductById } = require('../controllers/productsController');

// Obtener todos los productos
router.get('/', getProducts);

// Obtener un producto por ID
router.get('/:id', getProductById);

module.exports = router;