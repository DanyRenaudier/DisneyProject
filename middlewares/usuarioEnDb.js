const {request,response}=require('express')
const Usuario=require('../models/usuarios')

const usuarioRegistrado=async(req=request,res=response,next)=>{

    const {mail}=req.body;

    const user=await Usuario.findOne({
        where:{
            mail
        }
    })

    if(user){
        return res.json({
            msg:"El mail ya se encuentra registrado en la DB"
        })
    }
    
    next();   
}

module.exports= usuarioRegistrado