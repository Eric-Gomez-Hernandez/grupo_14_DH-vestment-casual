module.exports = function(sequelize, dataTypes) {
    let alias = "Producto";
    let cols = {
        idProducts: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        clothingColor: {
            type: dataTypes.STRING
        },
        clothingSex: {
            type: dataTypes.STRING
        },
        clothingSize:  {
            type: dataTypes.STRING
        },
        clothingType: {
            type: dataTypes.STRING
        },
        inStock: {
            type: dataTypes.INTEGER
        },
        photo: {
            type: dataTypes.STRING
        },
        price: {
            type: dataTypes.INTEGER
        },
        productDescription: {
            type: dataTypes.STRING
        },
        productName: {
            type: dataTypes.STRING
        }
    }

    let config = {
        tableName: "products",
        timestamps: false
    }

    let Producto = sequelize.define(alias, cols, config);

    Producto.associate = function(models) {
        Producto.belongsTo(models.Categoria, {
            as: "categoria",
            foreignKey: "clothingSex"
        });
        Producto.belongsTo(models.Color, {
            as: "color",
            foreignKey: "clothingColor"
        });
        Producto.belongsTo(models.Talla, {
            as: "talla",
            foreignKey: "clothingSize"
        });  
        Producto.belongsTo(models.Tipo, {
            as: "tipo",
            foreignKey: "clothingType"
        })           
    }


    return Producto;
}