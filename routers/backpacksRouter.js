const Router = require('express')
const router = new Router()
const backpacksController = require('../controllers/backpacksController')

router.get('/', backpacksController.getAll)
router.get('/:id', backpacksController.getOne)

module.exports = router