const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const AccountModel = new Schema({
    userName: {
        type: String,
        default: '',
        unique:true,
    },
    password: {
        type: String,
        default: ''
    },
    role: {
        type: String,
        default: 'CUSTOMER',
        enum:['CUSTOMER','ADMIN'],
        uppercase: true
    },
    createdBy: {
        type: String,
        default: 'customer',
        uppercase: true
    },
    modifiedBy: {
        type: String,
        default: 'customer',
        uppercase: true
    }
}, {
    timestamps:true
});

module.exports = mongoose.model('Accounts',AccountModel);