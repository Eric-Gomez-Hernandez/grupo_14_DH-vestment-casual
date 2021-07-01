const express = require('express');
const router = express.Router();

const indexController = require('../controllers/indexController');

router.get('/',indexController.main);
router.get('/categorias',indexController.categorias);
router.get('/detalle-producto', indexController.detalle);
router.get('/carrito', indexController.carrito);

module.exports = router;