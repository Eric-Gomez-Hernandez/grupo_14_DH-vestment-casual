const express = require('express');
const router = express.Router();
const { body } = require('express-validator');
const userController = require('../controllers/userController');
const guestMiddleware = require('../middlewares/guestMiddleware');
const authMiddleware = require('../middlewares/authMiddleware');

router.get('/registro',guestMiddleware, userController.registro);
router.post('/registro', userController.crearRegistro);
router.post('/login', userController.loginAccess);
router.get('/profile',authMiddleware,userController.profileAccess);
router.put('/profile/:id', userController.profileUpdate);
router.get('/logout', userController.logout);


module.exports = router;