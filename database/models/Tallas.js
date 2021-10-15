module.exports = function(sequelize, dataTypes) {
    let alias = "Talla";
    let cols = {
        id: {
            type: dataTypes.STRING,
            primaryKey: true
        },
        size: {
            type: dataTypes.STRING
        }   
    }
    let config = {
        tableName: "sizes",
        timestamps: false
    }

    let Talla = sequelize.define(alias, cols, config);

   Talla.associate = function(models) {
        Talla.hasMany(models.Producto, {
            as: "productos",
            foreignKey: "clothingSize"
        })
    }
 
    return Talla;
}