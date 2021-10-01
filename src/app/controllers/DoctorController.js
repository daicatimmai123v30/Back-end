// const doctorModel = require('../models/DoctorModel');
const {
    MongooseToObject
} = require('../../util/mongoose');

class DoctorController {
    showAll(request, response, next) {

        // doctorModel.find({}, doctorModel => {
        //     response.json(doctorModel);
        // });
        doctorModel.find({})
        .then(doctor=>{
           response.json(doctor);
        }).catch(next);

    }
    // {doctormodel: MongooseToObject(doctorModel)}
    showOne(request, response, next) {
        doctorModel.findOne({
                lastName: 'Người ANh Em'
            })
            .then(doctorModel =>
                response.json(doctorModel)
            )
            .catch(next);
    }
    create(request, response, next) {
        response.render('create');
    }
    createPost(request, response, next) {
        const formData = request.body;
        const doctor = new DoctorModel(formData);
        doctor.save().then().catch();

    }
}
module.exports = new DoctorController;