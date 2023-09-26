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
            //res.send(newAddress);
            console.log("Successfully added an address");

            var newUser = {
                first_name : req.body.first_name,
                last_name : req.body.last_name,
                username : req.body.username,
                password : req.body.password,
                contact_number : req.body.contact_number,
                address : newAddress.address_id,
                mop : req.body.mop,
                isOverallAdmin : req.body.isOverallAdmin
            };
            connection.query('INSERT INTO user SET ?', newUser, function(err, rows, fields) {
                if (!err) {
                    //newUser.password = crypt.decrypt(newUser.password);
                    //req.session.user = newUser;
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
