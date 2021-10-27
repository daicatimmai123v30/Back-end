const express = require('express');
const router = express.Router();
const PetController = require('../app/controllers/PetController');
const auth =require('../app/middleware/auth');
const multer =require('multer')


const storage = multer.diskStorage({
    destination:function(request,file,callback){
        callback(null,'./src/public/img/pet/');
    },  
    filename: function(request,file,callback){
          callback(null,'' +file.originalname);
    }
})

const fileFilter = (req, file, cb) => {
    // reject a file
    if (file.mimetype === 'image/jpeg' || file.mimetype === 'image/png' ||file.mimetype === 'image/jpg') {
      cb(null, true);
    } else {
      cb(null, false);
    }
  };
const upload =multer({storage: storage,
    limits: {
        fileSize: 1024 * 1024 * 5
      },
    fileFilter: fileFilter
})

router.post('/upload_image_pet',auth,upload.single('profile'),OwnerController.updateProfile);

module.exports=router;