USE employees;

DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS `role`;
DROP TABLE IF EXISTS department;

CREATE TABLE department (
  id INTEGER NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(30),
  PRIMARY KEY (id)
);

CREATE TABLE `role` (
  id INTEGER NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary VARCHAR(30) NOT NULL,
  department_id INTEGER,
  PRIMARY KEY (id),
  CONSTRAINT fk_department
    FOREIGN KEY (department_id)
      REFERENCES department(id)
);

CREATE TABLE employee (
  id INTEGER NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INTEGER,
  PRIMARY KEY (id),
  CONSTRAINT fk_role 
    FOREIGN KEY (role_id) 
      REFERENCES `role`(id), 
  manager_id INTEGER,
  CONSTRAINT fk_manager
    FOREIGN KEY (manager_id) 
      REFERENCES employee(id) 
);