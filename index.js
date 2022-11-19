const express = require('express')
const cors = require('cors')
require('dotenv').config()
const router = require('./routers')
const path = require('path')

const app = express()
app.use(express.json())
app.use(cors())
app.use(express.static(path.resolve(__dirname, 'static')))
app.use('/api', router)

const PORT = process.env.PORT || 3002

const start = () => {
    try {
        app.listen(PORT, () => {
            console.log(`PORT: ${PORT} is listening!`)
        })
    } catch (e) {
        console.log(e)
    }
}

start()