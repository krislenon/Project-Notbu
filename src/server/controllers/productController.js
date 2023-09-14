const mysql = require('mysql2');
const connection = require('../config/database')

exports.addProduct = (req,res) =>{
	var product = {
        product_name : req.body.name,
        category : req.body.category,
        status : req.body.status,
        brand : req.body.brand,
        body : req.body.body,
        img_filename : req.body.img_filename
	};
	connection.query('INSERT INTO product SET ?', product, function(err, rows, fields){
		if (err) {
            console.log(err)
            res.send(err);
         }
        else {
            venue.venue_id = rows.insertId;
            res.send(venue);
            console.log("Successfully added a product");
        }
	});
}

exports.viewAllProducts = (req,res) => {
	connection.query('SELECT * FROM product',[], function(err, rows, fields){
		if (err) {
            console.log(err)
            res.send(err);
         }
        else {
            res.send(rows);
            console.log("Successfully viewed all products.");
        }
	});
}

exports.viewProduct = (req,res) => {
	connection.query('SELECT * FROM product WHERE product_id = ?', [ req.params.id ], function(err, rows, fields){
		if (err) {
            console.log(err)
            res.send(err);
         }
        else {
            res.send(rows[0]);
            console.log("Successfully viewed a product.");
        }
	});
};
