const express =require('express');
const router= express.Router();
const doctorController = require('../app/controllers//DoctorController');

router.get('/create',doctorController.create);
router.post('/create',doctorController.createPost);
router.use('/',doctorController.showOne);


module.exports=router;