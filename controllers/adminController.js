const fs = require("fs");
const path = require("path");
const productsFilePath = path.join(__dirname, "../data/products.json");
const productData = JSON.parse(fs.readFileSync(productsFilePath, "utf-8"));
const dict = require('../data/conversionAtributos.js');

const adminController = {
    listAccess: (req, res) => {
        let page;
        let nextPage;
        if (!req.params.page) {
            page = 1
        }
        else {
            page = req.params.page;
        }
        res.render("admin/productList",{productData, dict, page});
    },

    addAccess: (req, res) => {
        res.render("admin/addProduct");
    },

    add: (req, res) => {
        const productInfo = req.body;
        let info = {
            id: productData[productData.length - 1].id + 1,
            ...productInfo
            };
            if (req.files.length === 0){
                info.photos = ['default.jpeg'];
            }
            else {
                info.photos = req.files.map(i => i.filename);
            }
            
            
        
        productData.push(info);

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
        for (i=0; i < productData[productIndex].photos.length;i++){
            let filePath = `../public/images/products/${productData[productIndex].photos[i]}`;
            fs.unlinkSync(path.join(__dirname, filePath));
            }
        productData.splice(productIndex, 1);
        fs.writeFileSync(productsFilePath, JSON.stringify(productData, null, 2));
        res.redirect("/admin/lista-productos");
        
    },

    update: (req, res) => {
        let itemId = req.params.id;
        let idx = productData.findIndex(i => i.id == itemId);
        let productInfo = req.body;
        let newEntry = {
            "id": productData[idx].id,
            ...productInfo,
            photos: []
        }
        if (req.params.photos) {
            newEntry.photos = req.params.photos.split('-i-').map(i => i + '.jpg');
            if (req.files.length !== 0) {
                newEntry.photos = newEntry.photos.concat(req.files.map(i => i.filename))
            }
        }
        else {
            if (req.files.length !== 0) {
                newEntry.photos = req.files.map(i => i.filename);
            }
            else{
                newEntry.photos = ['default.jpeg'];
            }
            
        }
        productData[idx] = newEntry;
        fs.writeFileSync(productsFilePath, JSON.stringify(productData));
        res.redirect('/admin/modificar-producto/' + itemId.toString());
    }
    
}

module.exports = adminController;