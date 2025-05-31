CREATE TABLE department (
    department_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
    department_name VARCHAR(20) NOT NULL,
    CONSTRAINT pk_department PRIMARY KEY (department_id)
);

CREATE TABLE employee (
    employee_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    role VARCHAR(40) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    department_id TINYINT UNSIGNED NOT NULL,
    CONSTRAINT pk_employee PRIMARY KEY (employee_id),
    CONSTRAINT fk_department_id FOREIGN KEY (department_id)
        REFERENCES department(department_id)
);