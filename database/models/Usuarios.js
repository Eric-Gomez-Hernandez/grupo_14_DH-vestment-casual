module.exports = function(sequelize, dataTypes) {
    let alias = "Usuario";
    let cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        first_name: {
            type: dataTypes.STRING
        },
        last_name:  {
            type: dataTypes.STRING
        },
        email:  {
            type: dataTypes.STRING
        },
        password:  {
            type: dataTypes.STRING
        },
        avatar:   {
            type: dataTypes.STRING
        }, 
        credentials:  {
            type: dataTypes.STRING
        }
    }

    let config = {
        tableName: "users",
        timestamps: false
    }

    let Usuario = sequelize.define(alias, cols, config);

    return Usuario;
}