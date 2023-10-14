const express = require('express')
const session = require('express-session');
const app = express()

app.use(express.json());

// Import all routes
const products = require('./routes/product');
const users = require('./routes/user');

//sessions
app.use(session({
	secret: 'notbu',
	resave: false,
	saveUninitialized: false,
	proxy: true
}));

app.use('/api/v1', products)
app.use('/api/v1', users)

module.exports = app
