const express = require('express');
const router = express.Router();
const multer = require('multer');
const PATH = require('path');
const bodyParser = require('body-parser');
const jsonParser = bodyParser.json();

const { body } = require('express-validator');
let multerDS = multer.diskStorage({
    destination: (req, file, callback) => {
        let folder = PATH.join(__dirname, '../public/images/users')
        callback(null, folder);
    },

    filename: (req, file, callback) => {
        let name = 'user-img-' + Date.now() + PATH.extname(file.originalname);
        callback(null, name);
    }
});
let fileUpload = multer({storage: multerDS});
const userController = require('../controllers/userController');

const adminController = require('../controllers/adminController');

const guestMiddleware = require('../middlewares/guestMiddleware');
const authMiddleware = require('../middlewares/authMiddleware');
router.get('/registro/:justSignedUp?',guestMiddleware, userController.registro); 

router.post('/registro', userController.crearRegistro);             // con MySQL
router.post('/login', userController.loginAccess);                  // con MySQL
router.get('/profile',authMiddleware,userController.profileAccess); // con MySQL
router.put('/profile/:id', userController.profileUpdate);
router.get('/logout', userController.logout);                       // No lleva MySQL

router.get('/agregar-usuario', adminController.addForm);
router.post('/agregar-usuario', fileUpload.array('avatar'), adminController.addUser);

router.get('/lista-usuarios/:page?', adminController.listAccess);
router.get('/modificar-usuario/:id', adminController.modifyUser);
router.put('/modificar-usuario/:id/:avatar?', fileUpload.array('avatar'), adminController.updateUser);

router.delete('/borrar-usuario/:id', adminController.deleteUser);
module.exports = router;