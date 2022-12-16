const db = require('../db')

class ClientsController {
    static async setNewClientTransaction(req, res) {
        const { transactionId, name, email, phone, country, city, totalPrice, goodsAmount } = req.body
        try {
            const currentDate = new Date()
            const finalDate = [currentDate.getFullYear(), currentDate.getMonth(), currentDate.getDate()].join('-')

            await db.query('INSERT INTO clients(name, email, phone, country, city, total_price, goods_amount, date_of_transaction, transaction_id) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)', [name, email, Number(phone), country, city, totalPrice, goodsAmount, finalDate, Date.now()])
            res.json({message: "Statistics"})
        } catch (e) {
            res.json({message: "Unhandled error!"})
            console.log(e)
        }
    }
}

module.exports = ClientsController
