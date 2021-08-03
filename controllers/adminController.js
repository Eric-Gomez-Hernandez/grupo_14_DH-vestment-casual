const fs = require("fs");
const path = require("path");
const productsFilePath = path.join(__dirname, "../data/products.json");
const productData = JSON.parse(fs.readFileSync(productsFilePath, "utf-8"));
const dict = require('../data/conversionAtributos.js');
//let products = [];
const adminController = {
    listAccess: (req, res) => {
        res.render("admin/productList",{productData, dict});
    },

    addAccess: (req, res) => {
        res.render("admin/addProduct");
    },

    add: (req, res) => {
        const productInfo = req.body;
        productData.push({
            id: productData[productData.length - 1].id + 1,
            ...productInfo
            });
        fs.writeFileSync(productsFilePath, JSON.stringify(productData));
        res.redirect("/admin/lista-productos");
    },

    modifyAccess: (req, res) => {
        let itemId = req.params.id;
        return res.render("admin/modifyProduct", {productData, itemId, dict});
    },


    delete: (req,res) => {
        const productIndex = productData.findIndex(product =>{
            return product.id == req.params.id;
          });
      
        productData.splice(productIndex, 1);
          
        fs.writeFileSync(productsFilePath, JSON.stringify(productData, null, 2));
        res.redirect("/");
        
    },

    update: (req, res) => {
        let itemId = req.params.id;
        let idx = productData.findIndex(i => i.id == itemId);
        let newEntry = {
            "id": productData[idx].id,
            "clothingColor": req.body.clothingColor,
            "clothingSex": req.body.clothingSex,
            "clothingSize": req.body.clothingSize,
            "clothingType": req.body.clothingType,
            "inStock": req.body.inStock,
            "photos": req.body.photos,
            "price": req.body.price,
            "productDescription": req.body.productDescription,
            "productName": req.body.productName,
            };
        productData[idx] = newEntry;
        fs.writeFileSync(productsFilePath, JSON.stringify(productData));
        res.redirect('/admin/modificar-producto/' + itemId.toString());
    }
    
}

module.exports = adminController;