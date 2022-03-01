const { Router } = require('express');
const {check} = require('express-validator');
const { personajesGet, personajesPost } = require('../controllers/personajes');


const router = Router();

router.get('/',[],personajesGet);

router.post('/',[],personajesPost);


module.exports = router;