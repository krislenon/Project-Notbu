const express = require('express');
const router = express.Router();

const userCtrl = require('../controllers/userController');

router.route('/all').get(userCtrl.getUsers);
router.route('/login').post(userCtrl.loginUser);
router.post('/sessions', userCtrl.getAccount);
router.post('/logout', userCtrl.logout);
router.route('/register').post(userCtrl.addUser);
router.route('/all/:id').delete(userCtrl.deleteUser);

module.exports = router;