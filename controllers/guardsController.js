const db = require('../db')

class GuardsController {
    async getAll(req, res) {
        const guards = await db.query('SELECT * FROM guard ORDER BY(id);')
        res.json(guards.rows)
    }

    async getOne(req, res) {
        const { id } = req.params
        const guard = await db.query('SELECT * FROM guard WHERE id = $1 ORDER BY(id)', [id])
        res.json(guard.rows[0])
    }
}

module.exports = new GuardsController()
