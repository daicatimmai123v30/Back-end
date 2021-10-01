const mongoose = require('mongoose');

async function connection() {
    try {
        await mongoose.connect('mongodb://localhost:27017/Artemis', {
            useNewUrlParser: true,
            useUnifiedTopology: true,
        });
        console.log('connect successfully!');
    } catch (error) {
        console.log('connect failure!');
    }
}

module.exports = {
    connection
};