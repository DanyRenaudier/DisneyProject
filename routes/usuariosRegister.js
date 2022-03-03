const { Router } = require('express');
const registerPost = require('../controllers/usuariosRegister');
const usuarioRegistrado = require('../middlewares/usuarioEnDb');

const router = Router();

router.post('/',[
    usuarioRegistrado
],registerPost);


module.exports = router;