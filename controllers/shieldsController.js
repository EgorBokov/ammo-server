const db = require('../db')

class ShieldsController {
    async getShields(req, res) {
        const shields = await db.query('SELECT id, name, images, price FROM shields')
        res.json(shields.rows)
    }
    async getOneShieldsItem(req, res) {
        const { id } = req.params
        const oneShieldItem = await db.query('SELECT * FROM shields')
        res.json(oneShieldItem.rows[0])
    }
}

module.exports = new ShieldsController()