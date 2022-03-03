const {request,response}=require('express');
const jwt = require('jsonwebtoken');
const Usuario = require('../models/personajes');


const validarJWT = async (req,res, next) =>{

    const token = req.header('token');

    if(!token){
        return res.status(401).json({
            msg: 'Token inexistente en la request',
        })
    }

    try {
        const {id}= jwt.verify(token, process.env.SECRETORPRIVATEKEY);

        req.id=id;

        const usuarioAutenticado= await Usuario.findByPk(uid);
        
        //Verificar existencia de usuario en db
        if(!usuarioAutenticado){
            return res.status(401).json({
                msg:'El usuario no existe en DB'
            })
        }
        
        //Verificar si el uid tiene estado true
        if(!usuarioAutenticado.estado){
            return res.status(401).json({
                msg:'El usuario fue desactivado'
            })
        }

        req.usuarioAutenticado=usuarioAutenticado;

        next()

    } catch (error) {
        console.log(error)
        res.status(401).json({
            msg:'Token invalido'
        })
    }
}

module.exports={
    validarJWT
}