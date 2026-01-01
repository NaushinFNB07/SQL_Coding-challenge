CREATE DATABASE emp_list;
USE emp_list;
CREATE TABLE emp_report(
emp_id INT,
first_name VARCHAR(20),
last_name VARCHAR(20),
gender ENUM('M','F')
);
INSERT INTO emp_report(emp_id,first_name,last_name,gender)
VALUES(1001,'Sirajic','Fareed','M'),(1002,'mohammed','siyaf','M'),
(1003,'Mohammed','shyaan','M'),(1004,'Shiza','Fathima','F'),
(1005,'shihla','fathima','F');
SELECT * FROM emp_report;
SELECT UPPER(first_name)AS first_name,LOWER(last_name) AS last_name FROM emp_report;
SELECT concat(first_name," ",last_name)AS full_name FROM emp_report;
SELECT substring(first_name,2,3)FROM emp_report;
CREATE DATABASE emptenure;
USE emptenure;
CREATE TABLE tenure(
emp_id INT,
emp_name VARCHAR(20),
hire_date DATE
);
INSERT INTO tenure(emp_id,emp_name,hire_date)
VALUES(101,'anu','2022-04-12'),(102,'balu','2022-04-11'),(103,'chitra','2022-05-11'),
(104,'devi','2022-06-11'),(105,'eliza','2022-09-11');
SELECT * FROM tenure;
SELECT curdate();
SELECT hire_date,YEAR(hire_date),MONTH(hire_date),DAY(hire_date) FROM tenure;
SELECT hire_date,datediff(curdate(),hire_date)experience FROM tenure;
CREATE DATABASE students;
USE students;
CREATE TABLE students_list(
stu_id INT  ,
first_name VARCHAR(20),
last_name VARCHAR(20),
gender ENUM('M','F')
);
INSERT INTO students_list(stu_id,first_name,last_name,gender)
VALUES(101,'ajith','kumar','M'),(102,'sri','nisha','F'),
(103,'manoj','kumar','M'),(104,'abinaya','sri','F'),
(105,'pooja','mohan','F');
SELECT * FROM students_list;
SELECT concat(first_name," ",last_name) full_name FROM students_list;
DELIMITER $$
CREATE FUNCTION full_name()
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
DECLARE result VARCHAR(20);
SELECT concat(first_name,' ',last_name) full_name INTO result FROM students_list WHERE students_list=1;
RETURN result;
END $$
DELIMITER ;
SELECT full_name();



