const express = require('express');
const router = express.Router();

const userController = require('../controllers/userController');
const adminController = require('../controllers/adminController');

router.get('/registro', userController.registro)
router.get('/profile', userController.profileAccess)
router.post('/login', userController.loginAccess)

router.get('/registro', adminController.addForm);
router.post('/registro', fileUpload.array('avatar'), adminController.addUser);

router.get('/lista-usuarios/:page?', adminController.listAccess);
router.get('/modificar-usuario/:id', adminController.modifyUser);
router.put('/modificar-usuario/:id/:avatar?', fileUpload.array('avatar'), adminController.updateUser);

router.delete('/borrar-usuario/:id', adminController.deleteUser);
module.exports = router;