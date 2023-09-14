const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'notbu',
    password: 'Notbu123!',
    database: 'notbu'
  });
  

connection.connect((err) => {
    if (!err) {
        console.log("The database is connected!");
    } else {
        console.log("There is an error in database connection!");
    }
});
connection.query('USE notbu');
module.exports = connection;