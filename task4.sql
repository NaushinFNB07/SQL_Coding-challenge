CREATE DATABASE ecommerce;
USE ecommerce;
CREATE TABLE product(product_id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(50),
price DECIMAL(10,2)
);
CREATE TABLE employees(
dept VARCHAR(30),
employee_counts INT
);
INSERT INTO product(product_name,price)
VALUES('laptop',25000.00),('mobile',8000.00),('headphone',1000.00),
('smartwatch',3000.00),('battery',370.00),('tv',40000.00),('mixie',4500.00),
('washing machine',15000.00);
SELECT * FROM product;
INSERT INTO employees(dept,employee_counts)
VALUES('sales',8),('cashier',5),('finance',7),('stock',10),
('shipping',8),('team leader',6),('operator',9),('HR',12);
SELECT * FROM employees;
SELECT * FROM product ORDER BY price DESC LIMIT 4;

SELECT count(product_name)AS total_count,sum(price) total_sale,
avg(price) average_sales,
max(price),
min(price) FROM product;
SELECT * FROM employees HAVING employee_counts>6;

