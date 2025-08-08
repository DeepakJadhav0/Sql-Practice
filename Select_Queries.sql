CREATE TABLE students(
student_id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
email VARCHAR(50) NOT NULL UNIQUE,
city VARCHAR(50),
class VARCHAR(50) NOT NULL,
fees INT
);

INSERT INTO students (student_id, name, age, email, city, class, fees) VALUES
(1, 'Ava Thompson', 16, 'ava.thompson@email.com', 'New York', '10A', 1500.00),
(2, 'Liam Johnson', 17, 'liam.johnson@email.com', 'Los Angeles', '10B', 1450.50),
(3, 'Emma Davis', 15, 'emma.davis@email.com', 'Chicago', '9A', 1300.00),
(4, 'Noah Wilson', 17, 'noah.wilson@email.com', 'Houston', '11A', 1600.00),
(5, 'Olivia Martinez', 16, 'olivia.martinez@email.com', 'Phoenix', '10C', 1500.75),
(6, 'William Brown', 18, 'william.brown@email.com', 'Philadelphia', '12A', 1700.00),
(7, 'Sophia Garcia', 17, 'sophia.garcia@email.com', 'San Antonio', '11B', 1600.25),
(8, 'James Miller', 15, 'james.miller@email.com', 'San Diego', '9B', 1350.00),
(9, 'Isabella Anderson', 18, 'isabella.anderson@email.com', 'Dallas', '12C', 1750.00),
(10, 'Benjamin Taylor', 16, 'benjamin.taylor@email.com', 'San Jose', '10A', 1500.00),
(11, 'Mia Moore', 15, 'mia.moore@email.com', 'Austin', '9C', 1325.50),
(12, 'Lucas Jackson', 17, 'lucas.jackson@email.com', 'Jacksonville', '11A', 1600.00),
(13, 'Charlotte Martin', 16, 'charlotte.martin@email.com', 'Fort Worth', '10B', 1450.00),
(14, 'Henry Lee', 18, 'henry.lee@email.com', 'Columbus', '12B', 1700.00),
(15, 'Amelia Perez', 17, 'amelia.perez@email.com', 'Charlotte', '11C', 1650.00),
(16, 'Alexander White', 16, 'alex.white@email.com', 'San Francisco', '10C', 1480.00),
(17, 'Evelyn Harris', 15, 'evelyn.harris@email.com', 'Indianapolis', '9A', 1300.00),
(18, 'Michael Clark', 18, 'michael.clark@email.com', 'Seattle', '12A', 1700.00),
(19, 'Ella Scott', 17, 'ella.scott@email.com', 'Denver', '11B', 1625.00),
(20, 'Daniel Lewis', 16, 'daniel.lewis@email.com', 'Boston', '10B', 1450.00);

SELECT * FROM students; -- Basic Select

SELECT name , city FROM students; -- Column Select

SELECT * FROM students
WHERE student_id = 1;  -- using WHERE

SELECT * FROM students
WHERE age > 15; -- using operator

SELECT * FROM students
WHERE age < 17 AND student_id > 10; -- using logical operators

SELECT * FROM students
WHERE age BETWEEN 15 AND 17; --  15 <= n <= 17 as range

SELECT * FROM students
WHERE student_id IN (13,6,10); -- finds in given list

SELECT * FROM students
WHERE name LIKE 'A%'; -- STarting with A

SELECT * FROM students
WHERE name LIKE '%e'; --  Ends with e 

SELECT * FROM students
WHERE name LIKE '%nd%'; -- nd in middle

SELECT * FROM students 
WHERE email IS NOT NULL; -- row with NOT NULL value

UPDATE students
SET city = NULL
WHERE student_id = 8;

SELECT * FROM students
WHERE city IS NULL; -- With NUll value

SELECT UPPER(name) FROM students; -- returns value in Uppercase

SELECT LOWER(name) FROM students; -- returns value in lowercase

SELECT LENGTH(name) FROM students; -- returns string length of string

SELECT CONCAT(name,' - ',email) FROM students; -- concatinate the string 

--  PRACTICE SET

SELECT * FROM students
WHERE age = 16;

SELECT * FROM students
WHERE class = '10B';

SELECT * FROM students
WHERE name LIKE 'P%';

SELECT * FROM students
WHERE email LIKE '%email%';

SELECT * FROM students
WHERE city IS NULL;

SELECT UPPER(name) FROM students;

SELECT LENGTH(name) FROM students;

SELECT * FROM students
WHERE NOT class = '10A';
 
 -- BONUS CHALLANGE
 
 CREATE TABLE employee(
 emp_id INT PRIMARY KEY,
 emp_name VARCHAR(50) NOT NULL,
 email VARCHAR(50) UNIQUE,
 salary DECIMAL(10,2),
 join_date DATE DEFAULT (CURDATE())
);

INSERT INTO employee (emp_id, emp_name, email, salary) VALUES
(1, 'Alice Johnson', 'alice.johnson@example.com', 55000.00),
(2, 'Bob Smith', 'bob.smith@example.com', 48000.50),
(3, 'Carol Davis', 'carol.davis@example.com', 62000.00),
(4, 'David Lee', 'david.lee@example.com', 59000.75),
(5, 'Eva Brown', 'eva.brown@example.com', 61000.10),
(6, 'Frank White', 'frank.white@example.com', 53000.30),
(7, 'Grace Kim', 'grace.kim@example.com', 47000.00),
(8, 'Henry Clark', 'henry.clark@example.com', 65000.00),
(9, 'Ivy Lewis', 'ivy.lewis@example.com', 56000.45),
(10, 'Jack Wilson', 'jack.wilson@example.com', 49500.60);

SELECT * FROM employee
WHERE salary > 50000;

SELECT CONCAT(emp_name,' - ',email,' - ',Salary) FROM employee;

SELECT ROUND(salary) FROM employee;
