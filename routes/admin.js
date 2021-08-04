const express = require('express');
const multer = require('multer');
const PATH = require('path');
const router = express.Router();

let multerDS = multer.diskStorage({
    destination: (req, file, callback) => {
        let folder = PATH.join(__dirname, '../public/images/products')
        callback(null, folder);
    },

    filename: (req, file, callback) => {
        let name = 'product-img-' + Date.now() + PATH.extname(file.originalname);
        callback(null, name);
    }
});
let fileUpload = multer({storage: multerDS});
const adminController = require('../controllers/adminController');

router.get('/', adminController.listAccess);

router.get('/agregar-producto', adminController.addAccess);
router.post('/agregar-producto', fileUpload.single('photos'), adminController.add);

router.get('/lista-productos', adminController.listAccess);
router.get('/modificar-producto/:id', adminController.modifyAccess);
router.put('/modificar-producto/:id', adminController.update);

router.delete('/:id', adminController.delete);

module.exports = router;