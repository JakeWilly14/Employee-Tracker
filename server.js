const express = require('express');
// Import and require mysql2
const mysql = require('mysql2');
// Hide mysql password
const hide = require('hide-secrets');

const PORT = process.env.PORT || 3001;
const app = express();

// Express middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// Connect to database
const db = mysql.createConnection(
  {
    host: 'localhost',
    // MySQL username,
    user: 'root',
    // TODO: Add MySQL password here
    password: 'Torisgotmilk14!',
    database: 'company_db'
  },
  console.log(`Connected to the movies_db database.`)
);