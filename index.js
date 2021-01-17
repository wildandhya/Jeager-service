const express = require('express');
require('dotenv').config()
const bodyParer = require('body-parser')
const logger = require('morgan')


// Setup Server
const App = express()
const PORT = process.env.PORT ||4000
App.listen(PORT, ()=>{
    console.log(`SERVER LISTENING AT ${PORT}`)
})

