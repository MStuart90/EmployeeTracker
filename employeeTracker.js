const mysql = require('mysql');
const inquirer = require('inquirer');
require('console.table');

const connection = mysql.createConnection({
  host: 'localhost',
  port: 3306,
  user: 'root',
  password: 'Root',
  database: 'EmployeeTracker_DB',
});
connection.connect((err) => {
  if (err) throw err;
  addDepartment();
});

const addDepartment = () => {
  inquirer
    .prompt({
      name: "department",
      type: "list",
      message: "What would you like to do?",
      choices: [
        'View all employees',
        'View all employees by department',
        'View all employees by manager',
        'Add employee',
        'Remove employee',
        'Update employee role',
        'Update employee manager'
      ],
    })
    .then((answer) => {
      console.log(answer);
      switch (answer.department) {
        case 'View all employees':
          viewEmployees();
          break;
        case 'View all employees by department':
          viewEmpbyDepartment();
          break;
        case 'View all employees by manager':
          viewEmpbyManager();
          break;
        case 'Add employee':
          addEmployee();
          break;
        case 'Remove employee':
          removeEmployee();
          break;
        case 'Update employee role':
          updateEmployeerole();
          break;
        case 'Update employee manager':
          updateEmployeeManager();
          break;
        case 'exit':
          connection.end();
          break;
      }
    });
};


const viewEmployees = () => {
  const query =
    'SELECT employee.id, employee.first_name, employee.last_name , role.title, role.salary FROM employee left join role on employee.role_id=role.id;';
  connection.query(query, (err, res) => {
    if (err) throw err;
    console.log('\n');
        console.log('VIEW ALL EMPLOYEES');
        console.log('\n');
        console.table(res);
        addDepartment();
  });
};

const viewEmpbyDepartment = () => {
  const query =
    `SELECT department.name AS department, role.title, employee.id, employee.first_name, employee.last_name
    FROM employee
    LEFT JOIN role ON (role.id = employee.role_id)
    LEFT JOIN department ON (department.id = role.department_id)
    ORDER BY department.name;`;
  connection.query(query, (err, res) => {
    if (err) throw err;
    console.log('\n');
        console.log('VIEW EMPLOYEE BY DEPARTMENT');
        console.log('\n');
        console.table(res);
        addDepartment();
  });
};