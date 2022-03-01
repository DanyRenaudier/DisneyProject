const {Sequelize} = require('sequelize');

const dbInstance=()=>{
    return sequelize = new Sequelize('', process.env.USER, process.env.PASSWORD , {
        host: `localhost`,
        dialect: 'mysql',
        database:'disneyproyect',
        port:process.env.DBPORT
      });
}

const dbConnection=async()=>{

    dbInstance();

    try {
        await sequelize.authenticate();
        console.log("DB conectada con exito!");
    } catch (error) {
        console.log('No se pudo conectar a la base de datos:',error);
    }
}

module.exports={
    dbConnection,
    dbInstance
}