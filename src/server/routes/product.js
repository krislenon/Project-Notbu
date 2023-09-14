const express = require('express')
const router = express.Router();

const productCtrl = require('../controllers/productController')

// product routes
router.route('/products').post(productCtrl.addProduct);
router.route('/products').get(productCtrl.viewAllProducts);
router.route('/products/:id').get(productCtrl.viewProduct);


module.exports = router;