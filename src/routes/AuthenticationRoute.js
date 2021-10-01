const express = require('express');
const router= express.Router();
const authenticationController = require('../app/controllers/AuthenticationController');

router.use('/login',authenticationController.showAll);
router.use('/',authenticationController.showAll);

module.exports=router;
