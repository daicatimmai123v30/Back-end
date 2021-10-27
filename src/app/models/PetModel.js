const mongoose = require('mongoose')
const Schema = mongoose.Schema

const PetModel = new Schema({
    type:{
        type:String,
        enum:['Chó','Mèo','Chim','Thỏ'],
        required:true
    },
    breed:{
        type:String,
        required:true
    },
    namePet:{
        type:String,
        required:true,
    },
    gender:{
        type:String,
        enum:['Đực','Cái'],
        required:true
    },
    age:{
        type:Number,
        default:0
    },
    weight:{
        type:Number,
        default:0
    },
    statusPet:{
        type:String,
        enum:['Chưa chết','Đã chết'],
        default:'Chưa chết',
    },
    statusRecord:{
        type:String,
        enum:[''],
        default:''
    },
    
    imagePet:[{
        image:{
            type:String,
            required:true,
            default:''
        }
    }],
    idOwner:{
        type:mongoose.Types.ObjectId,
        required:true,
        ref:'owners'
    },
    idIllness:{
        type:mongoose.Types.ObjectId,
        ref:'owners'
    },

})