const nodemailer = require("nodemailer");
const fs = require("fs");
const path = require("path");

function generateResponse(data) {
    const {
        name, email, country, city, phone, order
    } = data

    const orderData = [...order].map((item, idx) => {


        let resultString = `${idx + 1}. Наименование: ${item.name}. Цена: ${item.price}. Кол-во товара: ${item.amount}. Ссылка на товар: ${item.link}. Артикул: ${item.articul}`;

        if (item.size) {
            resultString += ` Размер: ${item.size}.`
        }

        return resultString + "\n";
    })

    fs.writeFileSync(path.resolve(__dirname, 'order.txt'), orderData.join('\n'), (err) => {
        if (err) console.log(err)
    })
}

class MailController {
    async createPurchase(req, res) {
        const {phone, email, country, city, name} = req.body
        console.log(req.body)

        const transport = nodemailer.createTransport({
            host: 'smtp.gmail.com',
            port: 465,
            secure: true,
            auth: {
                user: process.env.EMAIL_USER,
                pass: process.env.EMAIL_PASSWORD
            }
        })
        // let html = null
        // fs.readFileSync(path.resolve(__dirname, 'index.html'), (err, data) => {
        //     html = data
        //     console.log(html)
        // })

        await generateResponse(req.body)

        const messageToClient = {
            from: process.env.EMAIL_USER,
            to: email,
            subject: `Ваш заказ успешно оформлен!`,
            html: `<div><h3>${name}, благодарим Вас за совершенный заказ!</h3><p>В ближайшее время наш менеджер свяжется с вами для дальнейшего оформления вашего заказа!</p></div>`,
            attachments: [
                {
                    filename: 'Заказ.txt',
                    path: path.resolve(__dirname, 'order.txt')
                }
            ]
        }

        const messageToOwner = {
            from: process.env.EMAIL_USER,
            to: process.env.EMAIL_USER,
            subject: `Заказ в ${country}, ${city}`,
            html: `<div><p>Сведения о клиенте: <span style="font-weight: bold"><h3>${name} ${email} ${phone}</h3></span></p></div>`,
            attachments: [
                {
                    filename: 'Заказ.txt',
                    path: path.resolve(__dirname, 'order.txt')
                }
            ]
        }

        await transport.sendMail(messageToClient, (err) => {
            if (err) {
                console.log(err)
            }
        })

        await transport.sendMail(messageToOwner, (err) => {
            if (err) {
                console.log(err)
            }
        })

        // await fs.unlink(path.resolve(__dirname, 'order.txt'), (err) => {
        //     if (err) {
        //         console.log(err)
        //     } else {
        //         console.log('Файл был успешно удален!')
        //     }
        // })
        res.json({message: "Сообщение было успешно отправлено!"})
    }
}

module.exports = new MailController()
