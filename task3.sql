CREATE DATABASE university;
USE university;
CREATE TABLE college(
student_id INT PRIMARY KEY,
student_name VARCHAR(25),
gender ENUM('M','F'),
dept VARCHAR(25) UNIQUE,
email VARCHAR(30),
GPA DECIMAL(5,2),
gpa_status VARCHAR(25)
);
INSERT INTO college (student_id,student_name,gender,
dept,email,GPA,gpa_status)
VALUES(1001,'Anu','F','CSE','anu@gmail.com',3.5,'Excellent'),
(1002,'Banu','F','IT','banu@gmail.com',2.9,'good'),
(1003,'chandru','M','civil','chandru@gmail.com',2.5,'average'),
(1004,'Dev','M','Mech','null',2.2,'average'),
(1005,'eniya','F','aero','null',3.2,'Excellent'),
(1006,'Fazil','M','ECE','fazil@gmail.com',2.4,'average'),
(1007,'gayu','F','EEE','gayu@gmail.com',3.2,'Excellent');
SELECT * from college;
SELECT DISTINCT gpa_status FROM college;
SELECT * FROM college WHERE GPA>3;
SELECT * FROM college WHERE email IS NULL;
SELECT * FROM college WHERE email IS NOT NULL;
SELECT * FROM college WHERE gpa_status IN ("average","Excellent");
SELECT * FROM college WHERE GPA BETWEEN 2.00 AND 3.00;
 SELECT * FROM college WHERE GPA NOT BETWEEN 2.00 AND 3.00;