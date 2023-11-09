--- DBMS Practice Project-1

---- 1) Q

CREATE database CIT;
USE CIT;
CREATE TABLE CITY(
PERSON_ID INT,
CITY_NAME VARCHAR(20),
Locality VARCHAR(20),
COUNTRY VARCHAR(10));

-- 2)Q
DESC CITY;

--- 3) Q
INSERT INTO CITY VALUES
(1,'Raipur', 'Shankar Nagar', 'India'),
(2,'Raipur','Sales Tax Colony','India'),
(3,'Bilaspur', 'Nehru Nagar', 'India'),
(4,'Bilaspur', 'Civil Lines', 'India');
SELECT * FROM CITY;

---- 4) Q
ALTER TABLE CITY ADD COLUMN CONCAT VARCHAR(10);
DESC CITY;


----- 5) Q
ALTER TABLE CITY CHANGE CITY_NAME District VARCHAR(20);
DESC CITY;


---- 6) Q
DROP TABLE CITY;
DESC CITY;


----- 7) Q
UPDATE CITY 
SET Locality="Warehouse Road"
WHERE PERSON_ID=4;
SELECT * FROM CITY;


---- 8) Q
#  Using the HR_emp dataset answer the following:
#a) Write a query to view the structure of the table
#b) Display the details of the employees working in the company
#c) Display employee id, first name, last name, and hiring date of employees in the
#department no. 38
## HERE I AM TALKING HR DATA SET


SELECT * FROM EMPLOYEES;
--- A)
DESC EMPLOYEES;

--- B) 
SELECT * FROM EMPLOYEES;

--- C)

SELECT  EMPLOYEE_ID,FIRST_NAME,LAST_NAME,HIRE_DATE , DEPARTMENT_ID FROM EMPLOYEES WHERE DEPARTMENT_ID=38;



--- 9) Q
SELECT PHONE_NUMBER,JOB_ID,SALARY FROM EMPLOYEES WHERE FIRST_NAME='GOPI';


