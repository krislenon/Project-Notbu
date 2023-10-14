const crypt = require('../crypt');
const mysql = require('mysql2');
const connection = require('../config/database')

// Register a user => /api/v1/register
exports.addUser = (req, res) => {
    var newAddress = {
        house_num : req.body.address.house_num,
        street : req.body.address.street,
        subdivision : req.body.address.subdivision,
        barangay : req.body.address.barangay,
        city : req.body.address.city,
        province : req.body.address.province,
        zip : req.body.address.zip,
        landmark : req.body.address.landmark
    };
	
    connection.query('INSERT INTO fullAddress SET ?', newAddress, function(err, rows, fields) {
		if (err) {
            console.log(err)
            res.send(err);
         }
        else {
            newAddress.address_id = rows.insertId;
            console.log("Successfully added an address");

            var newUser = {
                first_name : req.body.first_name,
                last_name : req.body.last_name,
                username : req.body.username,
                password : crypt.encrypt(req.body.password),
                contact_number : req.body.contact_number,
                address : newAddress.address_id,
                mop : req.body.mop,
                isOverallAdmin : req.body.isOverallAdmin
            };

            connection.query('INSERT INTO user SET ?', newUser, function(err, rows, fields) {
                if (!err) {
                    newUser.password = crypt.decrypt(newUser.password);
                    req.session.user = newUser;
                    newUser.user_id = rows.insertId;
                    res.send({address: newAddress, user: newUser});
                    console.log("Successfully added user");
                }
                else {
                    console.log(err);
                    res.send(err);
                    console.log("Error in adding user");
                }
            });
        }
	});
	
};

// get current user
exports.getAccount = (req, res) => {
    if (req.body && req.body.user) {
        req.session.user = req.body.user;
    }
    res.send(req.session.user);
    console.log(req.session.user)
};

// Login User => /api/v1/login

exports.loginUser = (req, res) => {
    console.log(req.body.username,req.body.password)
    connection.query('SELECT * FROM user WHERE username = ? AND password = ?', [req.body.username, crypt.encrypt(req.body.password)], function(err, rows, fields) {
		if (!err){
			if (rows.length === 0) {
				res.send(false);
				console.log("Login unsuccessful"+ crypt.encrypt(req.body.password));
			}
			else {
			    rows[0].password = crypt.decrypt(rows[0].password);
				req.session.user = rows[0];
				console.log("Successfully logged in user");
				res.send(rows[0]);
			}
		}
		else {
			console.log(err);
			res.send(err);
		}
	});
}

// logout
exports.logout = (req, res) => {
    console.log('logged out');
    req.session.user = null;
    res.send(null);
};

// GET all users
exports.getUsers = (req, res) => {
	connection.query('SELECT * FROM user', [], function(err, rows, fields) {
		if (!err) {
			for(var i=0; i<rows.length; i++){
				rows[i].password = crypt.decrypt(rows[i].password);
			}
			res.send(rows);
			console.log("Successfully retrieved all users");
		}
		else {
			res.send(err);
			console.log("Error in retrieving all users");
		}
	});
};

exports.deleteUser = (req, res) => {
	connection.query('DELETE FROM user WHERE user_id = ?',[req.params.id], function(err, rows, fields) {
		if (!err) {
			res.send(null);
			console.log("Successfully deleted user");
		}
		else {
			res.send(err);
            console.log(err);
			console.log("Error in deleting user");
		}
	});
};
