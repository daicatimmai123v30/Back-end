const mongoose = require('mongoose');
const Schema= mongoose.Schema;

const OwnerModel = new Schema({
    firstName:{
        type:String,
        default:''
    },
    lastName:{
        type:String,
        default:''
    },
    dateOfBirth:{
        type:Date
    },
    gender:{
        type:String,
        enum:['Nam','Nữ','Giới tính thứ 3']
    },
    cmnd:{
        type:String,
        default:'',
    },
    image:{
        type:String,
        default:''
    },
    street:{
        type:String
    },
    city:{
        type:String
    },
    district:{
        type:String
    },
    ward:{
        type:String
    },
    // zipCode:{
    //     type:String,
    //     maxlength:6,
    //     minlength:6
    // },
    idNumber:{
        type:Schema.Types.ObjectId,
        ref:'authentication'
    }
});

module.exports=mongoose.model('owners',OwnerModel);