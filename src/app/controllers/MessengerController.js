

class MessengerController{
    showAll(request,response){
        response.send('Messenger Controller');
    }
}

module.exports= new MessengerController;