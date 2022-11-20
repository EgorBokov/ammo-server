const Router = require('express')
const router = new Router()
const db = require('../db')
const medicalRouter = require('./medicalRouter')
const clothesRouter = require('./clothesRouter')
const shieldsRouter = require('./shieldsRouter')
const backpacksRouter = require('./backpacksRouter')

router.get('/categories', async (req, res) => {
    const links = await db.query('SELECT * FROM categories;')
    res.json(links.rows)
})

router.use('/medicine', medicalRouter)
router.use('/clothes', clothesRouter)
router.use('/shields', shieldsRouter)
router.use('/backpacks', backpacksRouter)

module.exports = router