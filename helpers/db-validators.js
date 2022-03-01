// const Usuario = require('../models/personaje');
// const Role = require('../models/role');

// //hay que reestructurar todo el archivo con fn de sequalize en lugar de mongoos


// //Validacion de Rol
// const esRoleValido = async (rol='')=>{

//     const existeRole= await Role.findOne({rol});
//     if(!existeRole){
//         throw new Error(`No existe el rol ${rol} en la DB`)
//     }
// }

// //Validacion de correo

// const emailExiste= async(correo)=>{

//     const existeEmail= await Usuario.findOne({correo});
    
//     if(existeEmail){
//         throw new Error("El correo ya está registrado en la base de datos")
//     }
// }

// const existeUsuarioPorId= async(id)=>{

//     const existeUsuario= await Usuario.findById(id);
    
//     if(!existeUsuario){
//         throw new Error(`El usuario con el id ${id}, no existe`);
//     }
// }

// module.exports={
//     esRoleValido,
//     emailExiste,
//     existeUsuarioPorId
// }