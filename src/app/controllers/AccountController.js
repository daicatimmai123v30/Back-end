require('dotenv').config();
const accountModel = require('../models/AccountMode');
const doctorModel = require('../models/DoctorModel');
const argon2 = require('argon2');
const jwt = require('jsonwebtoken');

class AccountController {

    showAll(request, response, next) {
        accountModel.find({})
            .then(account =>
                account.map(account => {
                    console.log(typeof account._id.toString)
                })
            ).catch(next);
    }

    //[POST] /api/Account/register
    async register(request, response, next) {
        // accountModel.findById({
        //         _id: '613db7808ee3d27c5024cc2d'
        //     }, (err, accountModel) =>
        //     console.log(accountModel._id.toString));
        //  const doctor = new doctorModel({
        //     firstName:'Le Quang Vna',
        //     lastName:'khong co',
        //     account:account._id
        //  });
        //  console.log('doctorModel');
        //  doctor.save();

        const {
            userName,
            password
        } = request.body; //userName ='Lequangvan'
                        //'Truongledai'
        if (!userName || !password)
            return response.json({
                success: false,
                message: 'Missing username and/or password !!!'
            });
        try {
            //check existing username

            const account = await accountModel.findOne({
                userName: userName
            });
            if (account)
                return response.json({
                    success: false,
                    message: 'Existing Account'
                });
            const hasedPassword = await argon2.hash(password);//Truongledai =>ákgdsháiugsihưo;aihguig
            const newAccount = new accountModel({
                userName: userName,
                password: hasedPassword,
            });
            await newAccount.save();


            // return token
            const accessToken = jwt.sign({
                userId: newAccount._id
            }, process.env.ACCESS_TOKEN_SECRET);
            return response.json({
                success: true,
                message: 'Register successfully !',
                accessToken
            })
        } catch (error) {
            return response.json({success:false, message:'Internet error'});
        }
    }
    //[POST] /api/Account/login
    async login(request, response, next) {
        const {
            userName,
            password
        } = request.body;
        if (!userName || !password)
            return response.json({
                success: false,
                message : 'Missing username and/or password !!!'
            });
        try {
            // check user
            const user = await accountModel.findOne({
                userName
            });
            if (!user)
                return response.json({
                    success: false,
                    message: 'Incorrect username or password'
                });
            const passwordValid = await argon2.verify(user.password, password);
            if (!passwordValid)
                return response.json({
                    success: false,
                    message: 'Incorrect username or password'
                });

            const accessToken = jwt.sign({
                userId: user._id
            }, process.env.ACCESS_TOKEN_SECRET)
            return response.json({
                success: true,
                message: 'Logged successfully !',
                accessToken
            })
        } catch (error) {
            return response.json({success:false, message:'Internet error'});
        }
    }

    async findOne(request,response){
        
        const account =await accountModel.findById({_id:'613e83a902a05ed13c5af191'});
        console.log(account);
    }


    //[GET] /api/Acccount
    //Check if user is logged in
    //@access public 
    async checkToken(request,response,next){
        try {
            const account = await accountModel.findById(request.userId).select('-password');
            if(!account)
                return response.json({success:false,messege:'User not found'});
            response.json({success:true,account});
        } catch (error) {
            response.json({success:false,message:'Internal server error'});
        }
    }
}

module.exports = new AccountController