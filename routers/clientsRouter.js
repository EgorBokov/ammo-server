const Router = require('express')
const router = new Router()
const ClientsController = require('../controllers/clientsController')

router.post('/set-clients', ClientsController.setNewClientTransaction)

module.exports = router
