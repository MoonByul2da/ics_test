const express = require('express')
const mysql = require('mysql')

const app = express()
app.use(express.json());

const connection = mysql.createConnection({
    host: 'localhost', // host for connection
    port: 3306, // default port for mysql is 3306
    database: 'ics_test', // database from which we want to connect out node application
    user: 'root',// username of the mysql connection
    password: '' // password of the mysql connection
});



// READ
app.get('/read', async (req, res) => {
    try {
        connection.query('select * from products', (error, result, fields) => {
            if (error) {
                console.log(error);
                return res.status(400).send();
            }
            else {
                res.status(200).json(result);
                console.log(result);

            }

        })
    } catch (error) {
        console.log(error);
        return res.status(500).send();
    }

});

//READ single file gender
app.get('/read/single/gender/:gender', async (req, res) => {

    const gender = req.params.gender;
    try {
        connection.query('select * from products where gender = ?', [gender], (error, result, fields) => {
            if (error) {
                console.log(error);
                return res.status(400).send();
            }
            else {
                res.status(200).json(result);
                console.log(result);

            }

        })
    } catch (error) {
        console.log(error);
        return res.status(500).send();
    }

});

//READ single file size
app.get('/read/single/size/:size', async (req, res) => {

    const size = req.params.size;
    try {
        connection.query('select * from products where size = ?', [size], (error, result, fields) => {
            if (error) {
                console.log(error);
                return res.status(400).send();
            }
            else {
                res.status(200).json(result);
                console.log(result);

            }

        })
    } catch (error) {
        console.log(error);
        return res.status(500).send();
    }

});

//READ single file color
app.get('/read/single/color/:color', async (req, res) => {

    const color = req.params.color;
    try {
        connection.query('select * from products where color = ?', [color], (error, result, fields) => {
            if (error) {
                console.log(error);
                return res.status(400).send();
            }
            else {
                res.status(200).json(result);
                console.log(result);

            }

        })
    } catch (error) {
        console.log(error);
        return res.status(500).send();
    }

});

// CREATE Orders
app.post('/orders', async (req, res) => {
    const { pid, name, quantity, address } = req.body;
    try {
        connection.query(
            'insert into orders (pid,name,quantity,address) values (?,?,?,?)',
            [pid, name, quantity, address],
            (error, result, fields) => {
                if (error) {
                    console.log('error insert to database');
                    return res.status(400).send();
                }
                return res.status(201).json({ massage: 'success' });
            })
    } catch (error) {
        console.log(error);
        return res.status(500).send();
    }
})

//READ single file paid date
app.get('/read/single/paid_date/:paid_date', async (req, res) => {

    const paid_date = req.params.paid_date;
    try {
        connection.query('select * from orders where paid_date = ?', [paid_date], (error, result, fields) => {
            if (error) {
                console.log(error);
                return res.status(400).send();
            }
            else {
                res.status(200).json(result);
                console.log(result);

            }

        })
    } catch (error) {
        console.log(error);
        return res.status(500).send();
    }

});

//READ single file pay_status
app.get('/read/single/pay_status/:pay_status', async (req, res) => {

    const pay_status = req.params.pay_status;
    try {
        connection.query('select * from orders where pay_status = ?', [pay_status], (error, result, fields) => {
            if (error) {
                console.log(error);
                return res.status(400).send();
            }
            else {
                res.status(200).json(result);
                console.log(result);

            }

        })
    } catch (error) {
        console.log(error);
        return res.status(500).send();
    }

});

//READ single file quantity
app.get('/read/single/quantity/:quantity', async (req, res) => {

    const quantity = req.params.quantity;
    try {
        connection.query('select * from orders where quantity = ?', [quantity], (error, result, fields) => {
            if (error) {
                console.log(error);
                return res.status(400).send();
            }
            else {
                res.status(200).json(result);
                console.log(result);

            }

        })
    } catch (error) {
        console.log(error);
        return res.status(500).send();
    }

});


app.listen(2000, () => {
    console.log(222);
})