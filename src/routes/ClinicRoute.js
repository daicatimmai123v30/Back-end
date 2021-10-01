const express = require('express');
const router = express.Router();
const clinicController = require('../app/controllers/ClinicController');

router.use('/',clinicController.showAll);

module.exports=router;