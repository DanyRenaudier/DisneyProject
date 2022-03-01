const { Model, DataTypes } = require("sequelize");

const { dbInstance }= require('../database/config');
const sequelize= dbInstance()

class personajes extends Model {}

personajes.init({
    imagen:{
        type: DataTypes.TEXT,
        allowNull: false,
        validate:{
            notNull:{
                msg:'El campo imagen no puede ser null'
            },
            notEmpty:{
                msg:'El campo imagen no puede estar vacio'
            }
        }
    },
    nombre:{
        type: DataTypes.TEXT,
        allowNull: false,
        validate:{
            notNull:{
                msg:'El campo nombre no puede ser null'
            },
            notEmpty:{
                msg:'El campo nombre no puede estar vacio'
            }
        }
    
    },
    edad:{
        type: DataTypes.INTEGER,
        allowNull: false,
        validate:{
            notNull:{
                msg:'El campo edad no puede ser null'
            },
            notEmpty:{
                msg:'El campo edad no puede estar vacio'
            }
        }
    },
    peso:{
        type: DataTypes.INTEGER,
        allowNull: false,
        validate:{
            notNull:{
                msg:'El campo peso no puede ser null'
            },
            notEmpty:{
                msg:'El campo peso no puede estar vacio'
            }
        }
    },
    historia:{
        type: DataTypes.TEXT,
        allowNull:false,
        validate:{
            notNull:{
                msg:'El campo historia no puede ser null'
            },
            notEmpty:{
                msg:'El campo historia no puede estar vacio'
            }
        }
    },
    peliculas:{
        type: DataTypes.INTEGER,
        allowNull: true
    }
},{sequelize, timestamps: false}); 


module.exports= personajes