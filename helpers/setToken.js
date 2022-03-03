const usuario=require('../models/usuarios');
const generateJWT=require('../helpers/generate-jwt');

const setToken=async(user,mail)=>{

    //Consulta id asignado en DB
    const id= await usuario.findOne({
        where:{
            mail
        }
    });
    await user.update({"token":await generateJWT(id)});

    return user.token
}

module.exports= setToken