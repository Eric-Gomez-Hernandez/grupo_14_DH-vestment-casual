let products = [];
let adminController = {
    listAccess: function(req, res) {
        res.render('admin/productList');
    },
    addAccess: function(req, res) {
        res.render('admin/addProduct');
    },
    add: function(req, res) {
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

    modifyAccess: function(req, res) {
        return res.render('admin/modifyProduct');
    },

}

module.exports = adminController;