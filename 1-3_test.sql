-- Write a query to show all records from the students table. 
SELECT * FROM students;

-- Write a query to show only name and email from students.
SELECT name , email FROM students;

-- Insert a student with ID 5, name 'Aman', age 22, email 'aman@mail.com'.
UPDATE students
SET name = 'aman', age = 22, email = 'aman@mail.com'
WHERE student_id = 5;

--  Select students whose age is greater than 20.
SELECT * FROM students
WHERE age > 20;

-- Update the email of student with ID = 2 to 'sara@update.com'.
UPDATE students 
SET email = "sara@update.com"
WHERE student_id = 2;

-- Delete the student with ID = 3.
DELETE FROM students
WHERE student_id = 3;

-- Select students who are 18 or 19 years old.
SELECT * FROM students
WHERE student_id = 18 OR student_id = 19;

-- Select students whose name starts with 'P'.
SELECT * FROM students
WHERE name LIKE "P%";

-- Add a column phone (VARCHAR 15) to the students table.
ALTER TABLE students
ADD phone INT UNIQUE;

-- Rename the table students to school_students.
RENAME TABLE students TO school_students;

-- Show names in uppercase from students.
SELECT UPPER(name) FROM students;

-- Use CONCAT() to display name and email together.
SELECT CONCAT(name, ' - ', email) FROM students;

-- Show only students in department 1 or 2.
SELECT * FROM students 
WHERE class = '10A' OR class = '10B';

-- Select students with age NOT between 18 and 25.
SELECT * FROM students
WHERE age NOT BETWEEN 18 AND 25;

-- Find names and lengths of student names longer than 8 chars.
SELECT * FROM students
WHERE LENGTH(name) > 8;

-- Find students where age is even and greater than 20.
SELECT * FROM students
WHERE MOD(age,2) = 0 AND age > 20;