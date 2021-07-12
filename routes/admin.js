const express = require('express');
const router = express.Router();

const adminController = require('../controllers/adminController');

router.get('/', adminController.listAccess);

router.get('/agregar-producto', adminController.addAccess);
router.post('/agregar-producto', adminController.add);

router.get('/lista-productos', adminController.listAccess);
router.put('/modificar-producto', adminController.modifyAccess);

router.delete('/borrar-producto/:id', adminController.delete);

module.exports = router;