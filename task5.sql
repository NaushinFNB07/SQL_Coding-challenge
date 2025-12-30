CREATE DATABASE enrollment;
USE enrollment;
CREATE TABLE students(
student_id INT,
student_name VARCHAR(20),
course_id char(7)
);
INSERT INTO students(student_id,student_name,course_id)
VALUES(101,'anu','c1001'),
(102,'balu','c1002'),(103,'chitra','c1003'),(104,'devi','c1004'),
(105,'eliza','c1005');
SELECT * FROM students;
CREATE TABLE courses(
course_id char(7),
course_name VARCHAR(20)
);
INSERT INTO courses(course_id,course_name)
VALUES('c1001','MBA'),('c1002','BCA'),('1003','BBA'),
('c1004','ARTS'),('c1005','BSC'),('c1006','MSC'),('c1007','Phd');
SELECT * FROM courses;
SELECT s.student_name,c.course_name
FROM students AS s
INNER JOIN courses AS c ON s.course_id=c.course_id;
SELECT s.student_name,c.course_name
FROM students AS s
LEFT JOIN courses AS c ON s.course_id=c.course_id;
SELECT s.student_name,c.course_name
FROM students AS s
RIGHT JOIN courses AS c ON s.course_id=c.course_id;
CREATE DATABASE employeelist;
USE employeelist;
CREATE TABLE current_list(
employee_id char(5),
name VARCHAR(20),
role VARCHAR(20)
);
CREATE TABLE old_list(
employee_id char(5),
name VARCHAR(20),
role VARCHAR(20)
);
INSERT INTO current_list(employee_id,name,role)
VALUES('E01','akshay','HR'),('E02','balu','executive'),
('E03','chitra','sales'),
('E04','devi','Marketing'),('E05','emima','team leader');
INSERT INTO old_list(employee_id,name,role)
VALUES('E01','akshay','HR'),('E02','keerthi','Manager'),
('E03','chitra','sales'),
('E04','devi','Marketing'),('E05','faziha','team leader'),
('E06','sam','executive');
SELECT * FROM current_list;
UNION
SELECT * FROM old_list;
SELECT * FROM current_list;
UNION ALL
SELECT * FROM old_list;
