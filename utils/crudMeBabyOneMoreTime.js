const mysql = require('mysql2/promise');

// A raw implementation of an Active Record pattern.

const connect = async() => {
  const conn = await mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'password',
    database: 'employee_tracker'
  })

  console.log('connected as id ' + conn.threadId + '\n');

  return conn;
};

module.exports = connect;