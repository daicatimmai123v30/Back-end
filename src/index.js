const path = require('path');
const express = require('express');
const app = express();
const cors = require('cors');
const morgan = require('morgan');
const handlebars = require('express-handlebars');
const route = require('./routes');
const db = require('./config/db/index');
const http = require('http');
const socketio = require('socket.io');
const Account = require('../src/app/models/AccountMode');
const jwt = require('jsonwebtoken')



require('dotenv').config();


const server = http.createServer();
const io = socketio(server,{});
server.listen(4441);


// Init our socket
 

db.connection();
app.use('/images',express.static(path.join(__dirname, 'public/img')));
// app.use('/images', express.static('images')); 

app.use(express.urlencoded({
  extended: true
}));
app.use(express.json());
app.use(cors());
// Http logger
app.use(morgan('combined'))



app.get('/signin',async(request,response)=>{
  try {
    const {userName,password}=request.body;
    const findAccount=await Account.findOne({userName:userName});
    if(findAccount){
      const token = await jwt.sign({_id:findAccount._id,userName:findAccount.userName},'adjs123kknxcv1123x13a');
      return response.json({
        success:true,
        message:'Dang nhap thanh cong',
        token,

      })
    }
    else
      return response.json({
        success:false,
        message:'Username khong ton tai'
      })
  } catch (error) {
    return response.json({
      success:false,
      message:'Loi Server'
    })
  }
})




// Template Engin
app.engine('hbs', handlebars({
  extname: '.hbs'
}));
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, 'resources/views'));


//Routes init
route(app);

// middleware
require('./app/middleware/socket')(io);




app.listen(process.env.PORT, () => {
  console.log(`Example app listening at http://localhost:${process.env.PORT}`)
})