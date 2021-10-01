const express= require('express');
const router = express.Router();
const appointmentRote = require('../app/controllers/AppointmentController');

router.use('/',appointmentRote.showAll);


module.exports =router;