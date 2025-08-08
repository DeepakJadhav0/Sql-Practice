DML - Data manuplatation language - INSERT , SELECT , UPDATE , DELETE

1. INSERT - used to INSERT data into table 

-- insert one -
INSERT INTO customer(ID,name,age,City,Salary)
VALUES (1,'john snow',21,'Mumbai',20000);

-- insert many 
INSERT INTO customer(ID,name,age,City,Salary) VALUES
(2,'HArry Brook',20,'England',20000),
(3,'Ben Stokes',23,'England',20000);

-- update / WHERE is must
UPDATE customer
SET age = 25
WHERE ID = 2;

-- Delete Where is must
DELETE FROM customer
WHERE ID = 3;

-- Used as a Find
SELECT Name , age , City FROM customer 
WHERE age > 23;

use tutorial;

SELECT * FROM customer;

INSERT INTO customer(ID,name,age,City,Salary)
VALUES (1,'john snow',21,'Mumbai',20000);

INSERT INTO customer(ID,name,age,City,Salary) VALUES
(2,'HArry Brook',20,'England',20000),
(3,'Ben Stokes',23,'England',20000);

UPDATE customer
SET age = 25
WHERE ID = 2;

DELETE FROM customer
WHERE ID = 3;

SELECT Name , age , City FROM customer 
WHERE age > 23;

-- PRACTICE SET -- 

CREATE TABLE students(
student_id int PRIMARY KEY,
name VARCHAR(50) NOT NULL,
age int,
email VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO students(student_id,name,age,email)
VALUES (1,'Rohit Sharma',32,'rohitsharma@gmail.com');

INSERT INTO students(student_id,name,age,email)
VALUES (2,'virat Kolhi',36,'viratkolhi@gmail.com'),
	   (3,'jasprit bhumra',32,'jaspri@gmai.com'),
       (4,'ravindra jadeja',40,'jadega@gmail.com'),
       (5,'rahul Dravid',44,'rahul@gamil.com');

SELECT * FROM students;

SELECT * FROM students
WHERE age > 20;

SELECT name,email FROM students;

UPDATE students
SET email = 'Virat@gmail.com'
WHERE student_id = 2;

UPDATE students
SET age = 20
WHERE name = 'rahul Dravid' AND student_id = 5;

ALTER TABLE students
ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP;




