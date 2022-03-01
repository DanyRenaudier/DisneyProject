const { Model, DataTypes } = require("sequelize");

const { dbInstance }= require('../database/config');
const sequelize= dbInstance();

class Usuarios extends Model{}

Usuarios.init({
    nombre:{
        type: DataTypes.TEXT,
        allowNull: {
            msg:'El nombre es obligatorio'
        }
    },
    mail:{
        type: DataTypes.TEXT,
        allowNull: false,
        validate:{
            isEmail:{
                msg:'Debe ingresar un mail valido'
            },
            notEmpty:{
                msg:'El mail es obligatorio'
            }
        }
    },
    password:{
        type: DataTypes.TEXT,
        allowNull:false,
        validate:{
            notEmpty:{
            msg:'El password es obligatorio'
        }}
    },
    token:{
        type: DataTypes.TEXT,
        allowNull: true,
    }
},{sequelize, timestamps: false});

module.exports= Usuarios;