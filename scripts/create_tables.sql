CREATE TABLE department (
<<<<<<< HEAD
  id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  department_name VARCHAR(20) NOT NULL,
  CONSTRAINT pk_department PRIMARY KEY (id)
)
=======
  department_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  department_name VARCHAR(20) NOT NULL,
  CONSTRAINT pk_department PRIMARY KEY (department_id)
) 
>>>>>>> 8c45466326d3c5e48392f3f1b747cf3360f69a15
ENGINE = InnoDB
DEFAULT CHARSET = utf8mb4;

CREATE TABLE employee (
<<<<<<< HEAD
  id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
=======
  employee_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
>>>>>>> 8c45466326d3c5e48392f3f1b747cf3360f69a15
  first_name VARCHAR(40) NOT NULL,
  last_name VARCHAR(40) NOT NULL,
  role VARCHAR(40) NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE,
  department_id TINYINT UNSIGNED NOT NULL,
<<<<<<< HEAD
  CONSTRAINT pk_employee PRIMARY KEY (id),
  CONSTRAINT fk_department_id FOREIGN KEY (department_id)
    REFERENCES department (id)
=======
  CONSTRAINT pk_employee PRIMARY KEY (employee_id),
  CONSTRAINT fk_department_id FOREIGN KEY (department_id)
    REFERENCES department(department_id)
>>>>>>> 8c45466326d3c5e48392f3f1b747cf3360f69a15
    ON DELETE RESTRICT
) 
ENGINE = InnoDB
DEFAULT CHARSET = utf8mb4;
<<<<<<< HEAD

CREATE TABLE employee_salary (
  id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  amount SMALLINT UNSIGNED NOT NULL,
  employee_id TINYINT UNSIGNED NOT NULL,
  CONSTRAINT pk_employee_salary PRIMARY KEY (id),
  CONSTRAINT fk_employee_id FOREIGN KEY (employee_id)
    REFERENCES employee(id)
	ON DELETE RESTRICT
)
ENGINE = InnoDB
DEFAULT CHARSET = utf8mb4;
=======
>>>>>>> 8c45466326d3c5e48392f3f1b747cf3360f69a15
