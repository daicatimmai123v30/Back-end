require('dotenv').config();
const fs = require("fs")
const argon2 = require('argon2');
const jwt = require('jsonwebtoken');
const OwnerModel = require('../models/OwnerModel')


class OwnerController {

    async updateProfile (request,response){
        const userId= request.userId;
        try {
            const ownerUpdated = await OwnerModel.findOneAndUpdate({idNumber:userId},{image:'/images/owner/'+request.file.filename},{new:true});
            if(ownerUpdated)
            return response.json({
                success:true,
                user:ownerUpdated,
                message:'Chỉnh sửa thành công'
            })
            else
                return response.json({
                    success:false,
                    message:'Chỉnh sửa không thành công'
                })
        } catch (error) {
            return response.json({
                success: false,
                message:'Lỗi server'
            })
        }
    }
    
}

module.exports = new OwnerController