const db = require('../db')

class MedicalController {
    async getMedicine(req, res) {
        const medicine = await db.query('SELECT * FROM medicine;')
        res.json(medicine.rows)
    }

    async getOneMedicine(req, res) {
        const { id } = req.params
        const medItem = await db.query('SELECT * FROM medicine WHERE id = $1', [id])
        res.json(medItem.rows[0])
    }
}

module.exports = new MedicalController()