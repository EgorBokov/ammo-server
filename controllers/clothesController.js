const db = require('../db')

class ClothesController {
    async getClothes(req, res) {
        const clothes = await db.query('SELECT id, name, price, image FROM clothes;')
        res.json(clothes.rows)
    }

    async getOne(req, res) {
        const { id } = req.params
        const oneItem = await db.query('SELECT * FROM clothes WHERE id = $1', [id])
        res.json(oneItem.rows[0])

    }
}

module.exports = new ClothesController()