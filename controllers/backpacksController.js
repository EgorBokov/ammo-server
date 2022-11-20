const db = require('../db')

class BackpacksController {
    async getAll(req, res) {
        const backpacks = await db.query('SELECT * FROM backpacks')
        res.json(backpacks.rows)
    }
    async getOne(req, res) {
        const { id } = req.params
        const backpack = await db.query('SELECT * FROM backpacks WHERE id = $1', [id])
        res.json(backpack.rows[0])
    }
}

module.exports = new BackpacksController()