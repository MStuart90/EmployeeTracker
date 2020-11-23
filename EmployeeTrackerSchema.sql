DROP DATABASE IF EXISTS EmployeeTracker_DB;
CREATE database EmployeeTracker_DB;

USE EmployeeTracker_DB;


CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  department_name VARCHAR(30) NULL,
  PRIMARY KEY (position)
);

CREATE TABLE roll (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(100) NULL,
  Salary DECIMAL(10,4) NULL,
  department_id INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (position)
);

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NULL,
  last_name VARCHAR(30) NULL,
  roll_id  INT NULL,
  manager_id INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (position)
);

SELECT * FROM department;
SELECT * FROM roll;
SELECT * FROM employee;

