const app = require('./app')
const connection = require('./config/database')


const dotenv = require('dotenv');

// Setting up config file
dotenv.config({ path: 'src/server/config/config.env' })


app.listen(process.env.PORT, () => {
    console.log(`Server strated on PORT: ${process.env.PORT} in ${process.env.NODE_ENV} mode.`)
});