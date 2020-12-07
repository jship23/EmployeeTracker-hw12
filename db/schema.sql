CREATE DATABASE employees_db;

USE employees_db;

CREATE TABLE employee (
id INTEGER NOT NULL AUTO_INCREMENT,
first_name VARCHAR (30),
last_name VARCHAR (30),
role_id INT,
manager_id INT,
PRIMARY KEY (id),
FOREIGN KEY (role_id) REFERENCES employeeRole(id),
FOREIGN KEY (manager_id) REFERENCES employee(id)
);

CREATE TABLE employeeRole (
id INTEGER NOT NULL AUTO_INCREMENT,
title VARCHAR (30),
salary DECIMAL(12,2),
department_id INT,
PRIMARY KEY (id),
FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE department(
id INTEGER NOT NULL AUTO_INCREMENT,
department_name VARCHAR (30),
PRIMARY KEY (id)
);