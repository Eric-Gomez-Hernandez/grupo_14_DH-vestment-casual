const db = require("../database/models");
function userLoggedMiddleware(req,res,next) {
    res.locals.isLogged = false;

    let emailInCookie = req.cookies.userEmail;
    if (emailInCookie) {
        db.Usuario.findOne({
            where: { emailss: emailInCookie}
        })
        .then((userFound) => {
            if (userFound) {
                let userToLogin = userFound.dataValues;
                delete userToLogin.password;
                req.session.userLogged = userToLogin;
            }
        });
    }   
    if (req.session.userLogged) {
        res.locals.isLogged = true;   
        res.locals.userLogged = req.session.userLogged;     
    }
    next();
}

module.exports = userLoggedMiddleware;