const User = require('../models/User');
const { validation } = require('express-validator');
const bcryptjs = require('bcryptjs');
const session = require('express-session');

let userController = {
    registro: function(req,res) {
         res.render('users/register');
    },
    crearRegistro: function(req,res) {
        let userInDB = User.findByEmail(req.body.user);
        if (userInDB) {
            return res.render('users/register',
            {
               oldData: req.body 
            });
        }
        User.create(req.body);
        res.redirect('/');
    },
    loginAccess: function(req, res){
        let userToLogin = User.findByEmail(req.body.user);
        if (userToLogin) {
            let isOkThePassword = bcryptjs.compareSync(req.body.password, userToLogin.password);
            if (isOkThePassword) {
                delete userToLogin.password;
                req.session.userLogged = userToLogin;
                if(req.body.remember_login) {
                    res.cookie('userEmail',req.body.user, { maxAge: (1000 * 60)*5});
                }
                return res.redirect('/user/profile');
            }   
            return res.render('users/register',
            {
                ErrorLogin: "Credenciales Inválidas" 
            });             
        };
        
        return res.render('users/register',
        {
            ErrorLogin: "Email no registrado" 
        });


        //res.render('users/profile');
    },
    profileAccess: function(req, res){
        res.render('users/profile', {
            user: req.session.userLogged
        });
    },
    logout: function(req,res) {
        res.clearCookie('userEmail');
        req.session.destroy();
        return res.redirect('/');
    },

    profileUpdate: function(req, res) {
       User.update(req.params.id, req.body.first_name, req.body.last_name, req.body.user);
        return res.redirect('/user/profile');
    }
};

module.exports = userController;