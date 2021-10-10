const { validation } = require('express-validator');
const bcryptjs = require('bcryptjs');
const session = require('express-session');

const db = require("../database/models");

let userController = {
    registro: function(req,res) {
         res.render('users/register', {justSignedUp: req.params.justSignedUp});
    },
    crearRegistro: function(req,res) {
        db.Usuario.findOne({
            where: { email: req.body.user}
        })
            .then((userFound) => {
                if (userFound) {
                    return res.render('users/register',{oldData: req.body});
                }
                db.Usuario.create({
                    "first_name": req.body.first_name,
                    "last_name": req.body.last_name,
                    "email": req.body.user,
                    "password": bcryptjs.hashSync(req.body.password1,10),
                    "avatar": "default.jpg",
                    "credentials": req.body.credentials
                })
                res.redirect('/user/registro/new')
             })       

    },    
    loginAccess: function(req, res){
        db.Usuario.findOne({
            where: { email: req.body.user}
        })
            .then((userFound) => {
                if (userFound) {
                    let isOkThePassword = bcryptjs.compareSync(req.body.password, userFound.password);
                    if (isOkThePassword) {
                        let userToLogin = userFound.dataValues;
                        delete userToLogin.password;
                        req.session.userLogged = userToLogin;
                        if(req.body.remember_login) {
                            res.cookie('userEmail',req.body.user, { maxAge: (1000 * 60)*5});
                        }                        
                        return res.redirect('/user/profile');
                    }                   
                    return res.render('users/register', { ErrorLogin: "Credenciales Inválidas" });    
                }
                return res.render('users/register', { ErrorLogin: "Email no registrado"});
             })       
    },

    profileAccess: function(req, res){
        res.render('users/profile', {  user: req.session.userLogged });
    },

    logout: function(req,res) {
        res.clearCookie('userEmail');
        req.session.destroy();
        return res.redirect('/');
    },

    profileUpdate: function(req, res) {
        db.Usuario.update(
            { 
                "first_name": req.body.first_name,
                "last_name": req.body.last_name,
                "email": req.body.user, 
            },
            {
                where: { id: req.params.id }
        });     
        req.session.userLogged.first_name =  req.body.first_name;
        req.session.userLogged.last_name =  req.body.last_name;
        req.session.userLogged.email =  req.body.user;       
        return res.redirect('/user/profile');
    }
};

module.exports = userController;