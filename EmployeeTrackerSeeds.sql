DROP DATABASE IF EXISTS EmployeeTracker_DB;
CREATE database EmployeeTracker_DB;

USE EmployeeTracker_DB;


CREATE TABLE departments (
  id INT NOT NULL AUTO_INCREMENT,
  department_name VARCHAR(30) NULL,
  PRIMARY KEY (id)
);

CREATE TABLE roles (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(100) NULL,
  Salary DECIMAL(10,4) NULL,
  department_id INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id)
);

CREATE TABLE employees (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NULL,
  last_name VARCHAR(30) NULL,
  role_id  INT NULL,
  manager_id INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id)
);





INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES ("Angela", "Smith", 100, 150);
INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES ("Elizabeth", "Johnson", 200, 250 );
INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES ("Mary", "Rogers", 300, 350);

INSERT INTO roles (id,title, salary, department_id)
VALUES (100, "Marketing Specialist", 50, 10);
INSERT INTO roles (id,title, salary, department_id)
VALUES (200, "Human Resources Generalist", 45.5, 20);
INSERT INTO roles (id,title, salary, department_id)
VALUES (300, "Accountant", 65, 30);

INSERT INTO departments (id, department_name)
VALUES (10, "Marketing");
INSERT INTO departments (id, department_name)
VALUES (20, "Human Resources");
INSERT INTO departments (id, department_name)
VALUES (30, "Accounting");


INSERT INTO department (id, department_name)
VALUES (008, "Regional Manager");
VALUES (007, "Sales Representative");
VALUES (006, "Sales Representative");
VALUES (005, "Senior Accountant");
VALUES (004, "Accountant");
VALUES (003, "Supplier Relations Representative");
VALUES (002, "Customer Service Representative");
VALUES (001, "Human Resources Representative");

INSERT INTO roll (flavor, price, quantity)
VALUES (008, "Dwight Schrute");

INSERT INTO employee (id, first_name, last_name, title, department, salary, manager)
VALUES (008, "Michael Scott");
VALUES (007, "Dwight Schrute");
VALUES (006, "Jim Halpert");
VALUES (005, "Angela Martin");
VALUES (004, "Kevin Malone");
VALUES (003, "Meredith Palmer");
VALUES (002, "Kelly Kapoor");
VALUES (001, "Toby Flenderson");

-- ### Alternative way to insert more than one row
-- INSERT INTO products (flavor, price, quantity)
-- VALUES ("vanilla", 2.50, 100), ("chocolate", 3.10, 120), ("strawberry", 3.25, 75);



