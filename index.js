const express = require('express')
const mysql = require('mysql')

// Configure connection with your credential here
const db = mysql.createConnection({
    host: 'benben-mysql',
//  Create a new user if using MySQL 8 - not currently functional
//  user: 'new_user',
    user: 'root',
    password: 'Ou666Pfme4205oAM6m6S68688lqy4PQfxlYFlCnmPzyyzaloZ5Zw='
});

// Connect to MySQL
db.connect(err => {
    if(err) {
        throw err
    }
    console.log('MySQL Connected')
});

// Instantiate application which listens for incomming connections
const app = express()

// Interact with Database: Create Database
// Define request and response mechanisms
app.get('/createdb', (req, res) => {
    // Run SQL commands from the application, through the mysql driver
    let sql = 'CREATE DATABASE benben_db'
    db.query(sql, err => {
        if(err) {
            throw err
        }
        res.send('DB Created')
    });
});

app.listen('3000', () => {
    console.log('Server listening for incomming connections on port 3000')
})
