const inquirer = require('inquirer');
const { connect } = require('./utils/crudMeBabyOneMoreTime')

async () => {
  const conn = connect();
  conn.end();
}