const express = require('express');
const router= express.Router();
const messengerController = require('../app/controllers/MessengerController');

router.use('/',messengerController.showAll);

module.exports=router;