const fs = require("fs");
const path = require("path");
const productsFilePath = path.join(__dirname, "../data/products.json");
const productosData = JSON.parse(fs.readFileSync(productsFilePath, "utf-8"));
let products = [];

const adminController = {
    listAccess: (req, res) => {
        res.render('admin/productList',{productosData});
    },

    addAccess: (req, res) => {
        res.render('admin/addProduct');
    },

    add: (req, res) => {
        let newObj = {
                'clothingColor': req.body.clothingColor,
                'clothingSex': req.body.clothingSex,
                'clothingSize': req.body.clothingSize,
                'clothingType': req.body.clothingType,
                'photos': req.body.photos, 
                'productDescription': req.body.productDescription,
                'productName': req.body.productName,
                };
        products.push(newObj);
        console.log(products);
        res.redirect('/lista-productos');
    },

    modifyAccess: (req, res) => {
        return res.render('admin/modifyProduct');
    },
    delete: (req,res) => {
        const productIdex = products.findIndex(producto =>{
            return productosData.id == req.params.id;
          });
      
        products.splice(productIdex, 1);
          
        fs.writeFileSync(productsFilePath, JSON.stringify(productosData, null, 2));
        res.redirect("/");
        // Do the magic
        return res.render('admin/modifyProduct');
    },
    
}

module.exports = adminController;