const { Model, DataTypes } = require("sequelize");

const { dbInstance }= require('../database/config');
const sequelize= dbInstance()

class peliculasSeries extends Model {}

peliculasSeries.init({
    imagen:{
        type: DataTypes.TEXT,
        allowNull: false
    },
    titulo:{
        type: DataTypes.TEXT,
        allowNull: false
    },
    fecha_creacion:{
        type: DataTypes.DATE,
        allowNull: false
    },
    calificacion:{
        type: DataTypes.INTEGER,
        allowNull: false
    },
    personajes:{
        type: DataTypes.INTEGER,
        allowNull: true
    }
},{sequelize, timestamps: false});


module.exports= peliculasSeries