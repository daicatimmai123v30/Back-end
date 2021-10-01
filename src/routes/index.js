const newsRouter = require('./new');
const accountsRoute = require('./AccountRoute');
const doctorsRoute = require('./DoctorRoute');
const appointmentRoute= require('./AppointmentRoute');
const authenticatrionRoute = require('./AuthenticationRoute');
const catalogIllnessRoute = require('./CatalogIllnessRoute');
const clinicRoute= require ('./ClinicRoute');
const illnessRoute = require ('./IllnessRoute');
const messengerRoute = require('./MessengerRoutes');

function route(app) {

    app.use('/api/Account', accountsRoute);
    app.use('/api/Doctor', doctorsRoute);
    app.use('/news', newsRouter);
    app.use('/api/Appointment',appointmentRoute);
    app.use('/api/Authentication',authenticatrionRoute);
    app.use('/api/CatalogIllness',catalogIllnessRoute);
    app.use('/api/Clinic',clinicRoute);
    app.use('/api/Illness',illnessRoute);
    app.use('/api/Messenger',messengerRoute);

    app.get('/list/account',(request,response)=>{
        return response.json([
            {
                title:'abc',
                desc:'abc'
            },
            {
                title:'xyz',
                desc:'xyz'
            }
        ])
    })
    // app.get('/Home', (req, res) => {
    //     res.render('Home');
    // })

    // app.get('/News', (req, res) => {
    //     res.render('News');
    // })
    // app.get('/Search', (request, response) => {
    //     response.render('Search');
    // });

    // app.post('/Search', (request, response) => {
    //     response.render('Search');
    // });
}

module.exports = route;