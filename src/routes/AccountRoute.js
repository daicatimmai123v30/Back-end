const express = require('express');
const router= express.Router();
const accountController = require('../app/controllers/AccountController');
const auth =require('../app/middleware/auth');

router.post('/register',accountController.register);
router.post('/login',accountController.login);
router.get('/',auth,accountController.checkToken);


module.exports =router;