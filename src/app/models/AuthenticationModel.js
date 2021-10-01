const mongoose  =require('mongoose');
const Schema = mongoose.Schema;

const AuthenticationModel = new Schema({
    numberPhone:{
        type:String,
        default:'',
        unique:true
    },
    password:{
        type:String,
        default:'',
        unique:true
    },
    lockStatus:{
        type:Boolean,
        default:false
    },
    modifiedBy:{
        type:String
    },
    createdBy:{
        type:String,
        uppercase:true,
    },
    canceledStatus:{
        type:Int8Array,
        default:0,
        min:0
    }
},{timestamps:true});

module.exports = mongoose.model('Authentication',AuthenticationModel);