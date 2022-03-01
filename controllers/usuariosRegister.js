const {response}=require('express');
const bcryptjs = require('bcryptjs');

const generateJWT= require('../helpers/generate-jwt')
const Usuarios= require('../models/usuarios');


const registerPost=async(req,res)=>{
    
    const {nombre, mail, password}=req.body;
    
    try {
        if(await Usuarios.findOne({
            where:{
                mail:mail
            }
        })){
            return res.json({
                msg:"El usuario ya existe en la DB"
            })
        }
        const usuario = Usuarios.build({nombre,mail,password});

        //Hash de password
        const salt= bcryptjs.genSaltSync();
        usuario.password = bcryptjs.hashSync( String(password), salt);
    
        //Guardar en DB
        await usuario.save();

        //Consulta id asignado en DB, creacion y seteo de token
        const id= await Usuarios.findOne({where:{
            mail
        }})
        const token=await generateJWT(id);
        
        await usuario.set({token}).save();

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