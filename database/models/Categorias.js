module.exports = function(sequelize, dataTypes) {
    let alias = "Categoria";
    let cols = {
        id: {
            type: dataTypes.STRING,
            primaryKey: true
        },
        category: {
            type: dataTypes.STRING
        }     
    }
    let config = {
        tableName: "categories",
        timestamps: false
    }

    let Categoria = sequelize.define(alias, cols, config);

    Categoria.associate = function(models) {
        Categoria.hasMany(models.Producto, {
            as: "productos",
            foreignKey: "clothingSex"
        })
    }


    return Categoria;
}