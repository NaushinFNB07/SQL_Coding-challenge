      1.create table
CREATE DATABASE HOSPITAL;
use HOSPITAL;

CREATE TABLE patient(
patient_id INT,
patient_name VARCHAR(50),
age INT,
gender ENUM('M', 'F'),
admission_date DATE
);
         2.Alter table
ALTER TABLE patient 
ADD COLUMN Doctor_Assigned VARCHAR(50);
         3.Modify column
         
	ALTER TABLE patient
	MODIFY patient_name VARCHAR(100);
    
         4.Rename TABLE
         
         ALTER TABLE patient
         RENAME TO patient_info;
         
         5.TRUNCATE vs DROP
         
         TRUNCATE TABLE patient_info;
         DROP TABLE patient_info;