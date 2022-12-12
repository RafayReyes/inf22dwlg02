'user strict';

var mysql = require('mysql');

var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    database: "pokemon",
    password: ''
});

connection.connect (function (err) {
    if(err){
        console.log('Error on database connection.');
        throw err;
    }
console.log('Database connection active.');
});

module.exports = connection;