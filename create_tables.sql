CREATE TABLE department (
    department_id TINYINT UNSIGNED AUTO_INCREMENT,
    department_name VARCHAR(20),
    CONSTRAINT pk_department PRIMARY KEY (department_id)
);

CREATE TABLE employee (
    employee_id TINYINT UNSIGNED AUTO_INCREMENT,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    role VARCHAR(40),
    start_date DATE,
    end_date DATE,
    department_id TINYINT UNSIGNED,
    CONSTRAINT pk_employee PRIMARY KEY (employee_id),
    CONSTRAINT fk_department_id FOREIGN KEY (department_id)
        REFERENCES department(department_id)
);
