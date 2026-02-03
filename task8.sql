CREATE DATABASE order_details;
USE order_details;
CREATE TABLE orders(
order_id INT,
customer_id CHAR(20),
amount DECIMAL(10,2),
order_date DATE
);
CREATE TABLE order_history(
order_id INT,
customer_id CHAR(20),
amount DECIMAL(10,2),
order_date DATE,
deleted_at DATE
);
INSERT INTO orders(order_id,customer_id,amount,order_date)
VALUES(101,'c1001',25000.00,'2025-09-14'),
(102,'c1002',35000.00,'2025-08-14'),
(103,'c1003',15000.00,'2025-07-14'),
(104,'c1004',45000.00,'2025-10-14'),
(105,'c1005',55000.00,'2025-11-14'),
(106,'c1006',65000.00,'2025-12-14'),
(107,'c1007',75000.00,'2025-05-14');
SELECT * FROM orders;
DELIMITER $$
CREATE TRIGGER trg_after_order_delete
AFTER DELETE ON orders FOR EACH ROW
BEGIN
INSERT INTO order_history(order_id,customer_id,amount,order_date,deleted_at)
VALUES(OLD.order_id,OLD.customer_id,OLD.order_date,OLD.amount,NOW());
END $$
DELIMITER ;
SELECT USER();
SELECT USER,HOST FROM mysql.user;
DROP USER 'junior_analyst '@'localhost';
ALTER USER 'junior_analyst '@'localhost'IDENTIFIED BY '123456';
CREATE USER 'junior_analyst '@'localhost'IDENTIFIED BY '123456';
SHOW GRANTS FOR 'junior_analyst '@'localhost';
GRANT SELECT ON employees .* TO 'junior_analyst '@'localhost';
REVOKE SELECT ON * .* FROM 'junior_analyst '@'localhost';
CREATE DATABASE bank_details;
USE bank_details;
CREATE TABLE bank(
account_id INT,
account_name VARCHAR(20),
balance DECIMAL(10,2)
);
INSERT INTO bank(account_id,account_name,balance)
VALUES(101,'anu','10000'),(102,'balu','20000'),(103,'chitra','30000'),(104,'devi','40000'),
(105,'eliza','50000');
SELECT * FROM bank;
SET sql_safe_update=0;
BEGIN;
UPDATE bank
SET balance=balance-5000
WHERE account_id=101;
SAVEPOINT after_debit;
UPDATE bank
SET balance=balance-5000
WHERE account_id=102;
COMMIT;
SET sql_safe_update=1;
ROLLBACK TO after_debit;