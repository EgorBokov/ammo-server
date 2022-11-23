const Router = require('express')
const router = new Router()
const guardsController = require('../controllers/guardsController')

router.get('/', guardsController.getAll)
router.get('/:id', guardsController.getOne)

module.exports = router
