const {response}=require('express');
const bcryptjs = require('bcryptjs');

const Personaje = require('../models/personajes');
const { send } = require('express/lib/response');


const personajesGet=async(req,res=response)=>{

    const personaje= await Personaje.findAll({
        attributes:["nombre","imagen"],
    })

    res.json({
        personaje
    })
}

const personajesPost=async(req,res=response)=>{

    const {imagen,nombre,edad,peso,historia}= req.body;
    
    try {
        let personaje=Personaje.build({imagen,nombre,edad,peso,historia});
        await personaje.save()
        
        res.json({
            msg:"Personaje Creado!"
        }) 

    }catch (error) {
        const msg= error || error.errors[0].message;
        res.status(409).json({
            msg
        })
    }
} 
         

const personajesPut=async(req,res=response)=>{

    //requerir 2 campos para actualizar personaje

    const {imagen,nombre,edad,peso,historia}= req.body;
    
    try {
        Personaje.create({imagen,nombre,edad,peso,historia});
        
        res.json({
            msg:"Personaje Actualizado!"
        }) 
    }catch (error) {
        res.status(409).json({
            msg: error
        })
    }  
}

module.exports={
    personajesGet,
    personajesPost,
    personajesPut
}