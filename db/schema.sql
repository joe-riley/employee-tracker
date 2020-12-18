USE employees ;

DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS `role`;
DROP TABLE IF EXISTS department;


CREATE TABLE department (
  id INTEGER PRIMARY KEY,
  `name` VARCHAR(30)
);

CREATE TABLE `role` (
  id INTEGER PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary VARCHAR(30) NOT NULL,
  department_id INTEGER,
  CONSTRAINT fk_department
    FOREIGN KEY (department_id)
      REFERENCES department(id)
);

CREATE TABLE employee (
  id INTEGER PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INTEGER,
  CONSTRAINT fk_role 
    FOREIGN KEY (role_id) 
      REFERENCES `role`(id), 
  manager_id INTEGER,
  CONSTRAINT fk_manager
    FOREIGN KEY (manager_id) 
      REFERENCES employee(id) 
);