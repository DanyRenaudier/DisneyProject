const { Router } = require('express');
const registerPost = require('../controllers/usuariosRegister');

const router = Router();

router.post('/',[],registerPost);


module.exports = router;