
const { Op } = require("sequelize");
const db = require("../database/models");

let indexController = {
    main: function(req,res) {
        db.Producto.findAll()
            .then((productos) => { 
               res.render('index',{productData : productos});
            });  
    },  
    categorias: function(req,res) {
        let categoria = "F";
        if (req.params.categoria == "Mujer") {
            categoria="M";
        }
        db.Producto.findAll( {
            include: [ { association: "categoria" }],
            where:  { [Op.not]: [ { clothingSex: categoria } ]}
        })
        .then((productos) => { 
            res.render('products/categorias',{productData : productos,  categoria: req.params.categoria});
        }); 
    },    
    detalle: function(req,res) { 
        console.log(req.params.id) ;
        db.Producto.findOne({
            include: [ { association: "categoria" },{ association: "color" },{ association: "talla" } ],
            where: { idProducts: Number(req.params.id)}
        })
            .then((productFound) => {
                res.render('products/productDetail',{producto : productFound, dict: dict});
            });
    },
    carrito: function(req,res) {
        res.render('products/productCart');
    }          
};

module.exports = indexController;