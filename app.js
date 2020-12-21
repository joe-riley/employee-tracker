const { prompt, Separator } = require('inquirer');
const { connect } = require('./utils/crudMeBabyOneMoreTime')


const mainMenu = [
  {
    type: 'list',
    name: 'branch',
    message: ' ',
    pageSize: 20,
    choices: [
      new Separator('=== What would you like to do? ==='),
      {
        name: 'Create a Department',
      },
      {
        name: 'Create a Roll',
      },
      {
        name: 'Create an Employee',
      },
      {
        name: 'View All Departments',
      },
      {
        name: 'View All Rolls',
      },
      {
        name: 'View All Employees',
      },
      {
        name: 'Update a Department',
      },
      {
        name: 'Update a Roll',
      },
      {
        name: 'Update an Employee',
      },
      {
        name: 'Remove a Department',
      },
      {
        name: 'Remove a Roll',
      },
      {
        name: 'Remove an Employee',
      },
    ]
  },
]

const run = async () => {
  // const conn = connect();
  // conn.end();
  prompt(mainMenu).then((answer) => {
    console.log(answer.branch);

    run();
    
  });
}

run();