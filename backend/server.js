const express = require('express');
const mysql = require('mysql2');

const app = express();
const port = 3000;

// Create connection to RDS MySQL
const connection = mysql.createConnection({
    host: 'nginx-database.czkgqc4841c1.eu-central-1.rds.amazonaws.com',
    user: 'admin',
    password: 'Or6087751',
    database: 'nginxdb'
});

app.get('/', (req, res) => {
    connection.query('SELECT message FROM messages LIMIT 1', (error, results) => {
        if (error) throw error;
        res.send(`<html>
            <body>
            <h1>${results[0].message}</h1>
            </body>
            </html>`);
    });
});

app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}/`);
});
