DROP DATABASE IF EXISTS tracker_db;
CREATE DATABASE tracker_db;

USE tracker_db;

CREATE TABLE departments (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    department VARCHAR(30)

);

CREATE TABLE roles (
    id INT NOT NULL AUTO_INCREMENT  PRIMARY KEY,
    title VARCHAR(30)
    salary DECIMAL,
    department_id INT,

    FOREIGN KEY (department_id)
    REFERENCES departments(id)
    ON DELETE SET NULL


);

CREATE TABLE employees(
    id INT,
    first_name VARCHAR(30)
    last_name VARCHAR(30)
    role_id INT,
    manager_id INT,
    FOREIGN KEY (role_id)
    REFERENCES role (id)
    ON DELETE SET NULL,
    FOREIGN KEY(manager_id)
    REFERENCES employee(id)
    ON DELETE SET NULL,

);