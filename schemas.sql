-- create database
DROP DATABASE IF EXISTS track_my_employeeDB;

CREATE DATABASE track_my_employeeDB;

USE track_my_employeeDB;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30)
 
);
-- table for deparment----
CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30),
  salary DECIMAL,
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES department(id)
);
-- table for employees ----
CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INT,
  manager_id INT,
  FOREIGN KEY (role_id) REFERENCES role(id),
  FOREIGN KEY (manager_id) REFERENCES employee(id)

);

-- seeds -----
INSERT INTO department (name)
VALUE ("Marketing/Sales");

INSERT INTO department (name)
VALUE ("Logistics");

INSERT INTO department (name)
VALUE ("Finance");

INSERT INTO department (name)
VALUE ("Legal/Human Resources");

-- role seeds -------
INSERT INTO role (title, salary, department_id)
VALUE ("Lead Sales", 120700, 2);

INSERT INTO role (title, salary, department_id)
VALUE ("Legal Team Lead", 250000, 4);

INSERT INTO role (title, salary, department_id)
VALUE ("Accountant", 125000, 3);

INSERT INTO role (title, salary, department_id)
VALUE ("Sales Lead", 100000, 1);

INSERT INTO role (title, salary, department_id)
VALUE ("Sales person", 80000, 1);

INSERT INTO role (title, salary, department_id)
VALUE ("Logistics Lead", 120000, 2);

INSERT INTO role (title, salary, department_id)
VALUE ("Lawyer", 190000, 4);

-- employee seeds-------
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Benito", "Juarez", null, 4);

INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Adan", "Sanchez", null, 2);

INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Mia","Toretto",null,3);

INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Brian", "O'conner", 1, 4);

INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Vicente", "Fernandez", 4, 5);

INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Adam", "Driver", 1, 6);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Ben", "Jerry", 2, 7);

-- option to select and create
SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;
