const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const MessageModel = new Schema({
    senderId:{
        type:String,
        required:true
    },
    recieverId:{
        type:String,
        require:true
    },
    textMessage:{
        type:String,
        required:true
    }
},{timestamps:true});

module.exports =mongoose.model('messages',MessageModel);