class AppointmentController{
    showAll(request,response){
        response.send('Appointment Controller');
    }
}

module.exports = new AppointmentController;