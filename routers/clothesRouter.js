const Router = require('express')
const router = new Router()
const clothesRouter = require('../controllers/clothesController')

router.get('/', clothesRouter.getClothes)
router.get('/:id', clothesRouter.getOne)

module.exports = router