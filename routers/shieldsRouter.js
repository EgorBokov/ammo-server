const Router = require('express')
const router = new Router()
const shieldsController = require('../controllers/shieldsController')

router.get('/', shieldsController.getShields)
router.get('/:id', shieldsController.getOneShieldsItem)

module.exports = router