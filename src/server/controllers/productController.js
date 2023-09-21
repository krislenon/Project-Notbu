const mysql = require('mysql2');
const connection = require('../config/database')

exports.addProduct = (req,res) =>{
	var product = {
        product_name : req.body.product_name,
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
            product.product_id = rows.insertId;
            res.send(product);
            console.log("Successfully added a product");
        }
	});
}

exports.viewAllProducts = (req,res) => {
    var numRows;
    var numPerPage = parseInt(req.query.npp, 10) || 10;
    var page = parseInt(req.query.page, 10) || 0;
    var skip = page * numPerPage;

    var limit = skip + ',' + numPerPage;

    connection.query('SELECT count(*) as numRows FROM product',function (err, rows, fields) {
        if(err) {
            console.log(err);
            res.send(err);
        }else{
            var numRows = rows[0].numRows;
            var numPages = Math.ceil(numRows / numPerPage);
            connection.query('SELECT * FROM product LIMIT ' + limit,function (err, rows, fields) {
                if(err) {
                    console.log(err);
                    res.send(err);
                }else{
                    res.send(rows);
                    console.log("Successfully viewed all products.");
                }
            });            
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

exports.searchProduct = (req,res) => {
	connection.query('SELECT * FROM product WHERE product_name LIKE ?', [ '%' + req.params.search + '%'], function(err, rows, fields){
		if(!err) {
			res.send(rows);
		}else{
			console.log(err);
			res.send(err);
		}
	});
};

exports.updateProduct = (req,res) => {
    var product = {
        product_id : req.params.id,
        product_name : req.body.product_name,
        category : req.body.category,
        status : req.body.status,
        brand : req.body.brand,
        body : req.body.body,
        img_filename : req.body.img_filename
	};
	connection.query('UPDATE product SET product_name = ?, category = ?, status = ?, brand = ?, body = ?, img_filename = ? WHERE product_id = ?', 
        [req.body.product_name, req.body.category, req.body.status, req.body.brand, req.body.body, req.body.img_filename, req.params.id], 
        function(err, rows, fields){
            if(!err) {
                console.log("Success");
                res.send(product);
            }else{
                console.log(err);
                res.send(err);
            }
	});
};

exports.deleteProduct = (req,res) => {
	connection.query('DELETE FROM product WHERE product_id = ?', [req.params.id], function(err, rows, fields){
		if(!err) {
			console.log("Success");
			res.send(null);
		}else{
			console.log(err);
			res.send(err);
		}
	});
};

exports.filterProductByCategory = (req,res) => {
	connection.query('SELECT * FROM product WHERE category = ?', [req.params.category], function(err, rows, fields){
		if(!err) {
			res.send(rows);
		}else{
			console.log(err);
			res.send(err);
		}
	});
};
