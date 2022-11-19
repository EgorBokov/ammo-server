const Router = require('express')
const router = new Router()
const medicalController = require('../controllers/medicalController')

router.get('/', medicalController.getMedicine)
router.get('/:id', medicalController.getOneMedicine)

module.exports = router