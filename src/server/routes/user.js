const express = require('express');
const router = express.Router();

const userCtrl = require('../controllers/userController');

router.route('/register').post(userCtrl.addUser);

module.exports = router;