const express = require('express');
const router = express.Router();
const { getProducts, getProductById, updateProduct } = require('../controllers/productsController');

// Obtener todos los productos
router.get('/', getProducts);

// Obtener un producto por ID
router.get('/:id', getProductById);

router.put('/:id', updateProduct)

module.exports = router;