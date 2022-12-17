const Router = require('express')
const router = new Router()
const nodemailer = require('nodemailer')
const fs = require('fs')
const path = require('path')
const db = require('../db')
const medicalRouter = require('./medicalRouter')
const clothesRouter = require('./clothesRouter')
const shieldsRouter = require('./shieldsRouter')
const backpacksRouter = require('./backpacksRouter')
const guardsRouter = require('./guardsRouter')
const clientRouter = require('./clientsRouter')
const mailController = require('../controllers/mailController')

router.get('/categories', async (req, res) => {
    try {
        const links = await db.query('SELECT * FROM categories;')
        res.json(links.rows)
    } catch(e) {
        res.json({
            message: "error"
        })
    }
})

router.use('/medicine', medicalRouter)
router.use('/clothes', clothesRouter)
router.use('/shields', shieldsRouter)
router.use('/backpacks', backpacksRouter)
router.use('/guards', guardsRouter)
router.use('/statistics', clientRouter)
router.post('/create-order', mailController.createPurchase)

module.exports = router
