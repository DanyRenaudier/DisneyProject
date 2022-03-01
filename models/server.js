const express=require('express');
const cors = require('cors');
const { dbConnection } = require('../database/config');

class Server{

    constructor(){
        this.app=express();
        this.port=process.env.PORT;
        this.characters = '/characters';
        this.login      = '/auth/login';
        this.register   = '/auth/register';

        //Conectar a base de datos
        this.conectarDB()

        //Middlewares
        this.middlewares();

        //Rutas de mi app
        this.routes();
    }

    async conectarDB(){
        await dbConnection();
    }

    middlewares(){
        //CORS
        this.app.use(cors());
        
        //Lectura y parseo del body
        this.app.use(express.json());

        //Directorio Publico
        this.app.use(express.static('public'));
    }

    routes() {

        this.app.use(this.register,require('../routes/usuariosRegister'));
        this.app.use(this.characters,require('../routes/personajes'));

    }

    listen() {
        this.app.listen(this.port,()=>{
            console.log('App listening at port',this.port);
        });
    }

}

module.exports= Server;