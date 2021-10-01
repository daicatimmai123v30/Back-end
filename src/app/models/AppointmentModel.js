const mongoose = require('mongoose');
const Scheme = mongoose.Schema;
const appointment = new Scheme({
    idOnwer: {
        type: String,
        default: ''
    },
    idDoctor: {
        type: String,
        default: ''
    },
    createdBy: {
        type: String,
        default: ''
    },
    modifiedBy: {
        type: String,
        default: ''
    },
    canceledDate: {
        type: Date,
        default: ''
    },
    canceledBy: {
        type: String,
        default: ''
    },
    status: {
        type: String,
        default: ''
    }
}, {
    timestamps: true
});