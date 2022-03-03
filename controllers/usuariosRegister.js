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

        //Seteo de token
        await setToken(usuario,mail);
        
        res.status(200).json({
            msg:'Usuario creado con exito!',
            usuario
        })
        
    }catch(error) {
        res.status(500).json({
            error
        })
    }

    
}

module.exports=registerPost