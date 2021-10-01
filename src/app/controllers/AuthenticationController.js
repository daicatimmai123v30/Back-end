const authenticationModel = require('../models/AuthenticationModel')

class AuthenticationController{
    showAll(request,response){
        response.send('Authentication Controller');
    }
    
}

module.exports= new AuthenticationController;

