const Router = require('express')
const router = new Router()
const nodemailer = require('nodemailer')
const db = require('../db')
const medicalRouter = require('./medicalRouter')
const clothesRouter = require('./clothesRouter')
const shieldsRouter = require('./shieldsRouter')
const backpacksRouter = require('./backpacksRouter')
const guardsRouter = require('./guardsRouter')
const {getLogger} = require("nodemailer/lib/shared");

router.get('/categories', async (req, res) => {
    const links = await db.query('SELECT * FROM categories;')
    res.json(links.rows)
})

router.use('/medicine', medicalRouter)
router.use('/clothes', clothesRouter)
router.use('/shields', shieldsRouter)
router.use('/backpacks', backpacksRouter)
router.use('/guards', guardsRouter)
router.post('/create-order', createPurchase)

function createPurchase(req, res) {
    const { phone, email, country, city, name } = req.body

    const transport = nodemailer.createTransport({
        host: 'smtp.gmail.com',
        port: 465,
        secure: true,
        auth: {
            user: 's1lice.egor@gmail.com',
            pass: 'ljtpzjempymnqlwf'
        }
    })

    const message = {
        from: 's1lice.egor@gmail.com',
        to: email,
        subject: `Заказ в ${country}, ${city}`,
        text: `${name} ${email} ${phone} ${country} ${city}`
    }

    transport.sendMail(message, (err) => {
        if (err) {
            return console.log(err)
        }
        res.json({message: 'Сообщение было отправлено успешно!'})
    })
}

module.exports = router
