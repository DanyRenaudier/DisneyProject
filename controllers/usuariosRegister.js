const bcryptjs = require('bcryptjs');


const Usuarios= require('../models/usuarios');
const setToken = require('../helpers/setToken');



const registerPost=async(req,res)=>{
    
    const {nombre, mail, password}=req.body;
    
    try {
        const usuario = Usuarios.build({nombre,mail,password});

        //Hash de password
        const salt= bcryptjs.genSaltSync();
        usuario.password = bcryptjs.hashSync( String(password), salt);
    
        //Guardar en DB
        await usuario.save();

        //Seteo de token al usuario
        setToken(usuario);

        res.json({
            msg:'Usuario creado con exito!',
            usuario,
            token
        })
    }catch (error) {
        const msg= error || error.errors[0].message;
        res.status(409).json({
            msg
        })
    }

    
}

module.exports=registerPost