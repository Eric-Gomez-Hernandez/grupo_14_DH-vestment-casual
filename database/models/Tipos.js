module.exports = function(sequelize, dataTypes) {
    let alias = "Tipo";
    let cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        type: {
            type: dataTypes.STRING
        }   
    }
    let config = {
        tableName: "types",
        timestamps: false
    }

    let Tipo = sequelize.define(alias, cols, config);


    Tipo.associate = function(models) {
        Tipo.hasMany(models.Producto, {
            as: "productos",
            foreignKey: "clothingType"
        })
    }

    return Tipo;
}