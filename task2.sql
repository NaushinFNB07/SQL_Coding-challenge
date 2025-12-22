CREATE DATABASE BOOKSTORE;
USE BOOKSTORE;
CREATE TABLE books(
book_id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(30) UNIQUE,
author VARCHAR(25),
isbn VARCHAR(15)
)AUTO_INCREMENT=1001;
CREATE TABLE orders(
order_id INT PRIMARY KEY,
book_id INT,
customer_name VARCHAR(30),
order_date DATE,
FOREIGN KEY(book_id)REFERENCES books(book_id) 
);
ALTER TABLE books ADD UNIQUE(isbn);
INSERT INTO books (title,author,isbn)
VALUES('Moon walk','Michael Johnson',98774321356),
('The Golden gate','Vikram Seth',95439765128),
('My Truth','Indira Gandhi',92146781207),
('Gathering Storm','Winston Churchill',947832642254),
('Broken Wing','Sarojini Naidu',96543219876);
SELECT * FROM books;
INSERT INTO orders(order_id,customer_name,order_date)
VALUES(101,'raj','2025-03-12'),
(102,'Anu','2025-02-15'),
(103,'priya','2025-04-13');
SELECT * FROM orders;
DELETE FROM books 
WHERE book_id=1002;
SELECT * FROM books;
TRUNCATE TABLE orders;
SELECT * FROM orders;