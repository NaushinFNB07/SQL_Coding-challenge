CREATE DATABASE employee_details;
USE employee_details;
CREATE TABLE employee1(
emp_id CHAR(10),
emp_name VARCHAR(20),
age INT
);
CREATE TABLE salary(
emp_id CHAR(10),
salary DECIMAL(10,2)
);
CREATE TABLE department(
emp_id CHAR(10),
dept VARCHAR(20)
);
INSERT INTO employee1(emp_id,emp_name,age)
VALUES('E101','siyaf',29),('E102','shyaan',30),
('E103','siraj',32),('E104','shiza',27),('E105','sheik',34),
('E106','shariq',31);
SELECT * FROM employee1;
INSERT INTO salary(emp_id,salary)
VALUES('E101',30000.00),('E102',29000.00),('E103',40000.00),('E104',35000.00),('E105',50000.00),
('E106',55000.00);
SELECT * FROM salary;
INSERT INTO department(emp_id,dept)
VALUES('E101','sales'),('E102','admin'),('E103','marketing'),('E104','HR'),
('E105','finance'),('E106','manager');
SELECT * FROM department;
DROP PROCEDURE if EXISTS get_employee_details;
DELIMITER $$
CREATE PROCEDURE get_employee_details(IN p_emp_id CHAR(10))
BEGIN
SELECT emp_id,
emp_name,
age
FROM employee1
WHERE emp_id=p_emp_id;
END $$

DELIMITER ;
CALL get_employee_details('E105');
CREATE VIEW emp_dept_view AS SELECT 
e.emp_name,
d.dept
FROM employee1 e
JOIN department d
ON e.emp_id=d.emp_id;
SELECT * FROM emp_dept_view;
CREATE VIEW employee_details AS SELECT 
e.emp_id,
e.emp_name,
e.age,
s.salary,
d.dept 
FROM employee1 e
 LEFT JOIN salary s 
 ON e.emp_id=s.emp_id
LEFT JOIN department d
ON e.emp_id=d.emp_id;
SELECT * FROM employee_details;


