-- MAster Test Of 8 DAYS
use subqueries;


-- ⚙ Section 2: Practical – Easy (Write SQL)

-- 1 Create a table named departments with columns:
 CREATE TABLE departments(
 dept_id INT PRIMARY KEY,
 dept_name VARCHAR(50) UNIQUE NOT NULL,
 location VARCHAR(50)
 );
 
 SELECT * FROM departments;
 
 -- 2 Insert these records into departments:
INSERT INTO departments (dept_id,dept_name,location)
VALUES (1, 'HR', 'New York'),
(2, 'IT', 'San Francisco'),
(3, 'Finance', 'Chicago');

-- 3 Write a query to display all columns from departments. 
SELECT * FROM departments;

-- 4 Write a query to get only department names and locations from departments.
SELECT dept_name , location
FROM departments;

-- 5 Write a query to change the location of the IT department to "Los Angeles".
UPDATE departments
SET location = "Los Angeles"
WHERE dept_name = "IT";

SELECT * FROM departments;

-- ⚙ Section 3: Practical – Medium

-- 1 Create a table employees with:
CREATE TABLE employee(
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50) NOT NULL,
salary DECIMAL,
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- 2 Insert:
INSERT INTO employee (emp_id, emp_name, salary, dept_id)
VALUES (105, 'Eva', 68000, 1),
(106, 'Frank', 82000, 3),
(107, 'Grace', 60000, 2),
(108, 'Hannah', 71000, 1),
(109, 'Ian', 95000, 3),
(110, 'Jill', 56000, 2),
(111, 'Kevin', 72000, 1),
(112, 'Laura', 67000, 1),
(113, 'Mike', 83000, 2),
(114, 'Nina', 69000, 3),
(115, 'Oscar', 87000, 2),
(116, 'Paula', 62000, 2),
(117, 'Quinn', 93000, 3),
(118, 'Rachel', 58000, 1),
(119, 'Steve', 79000, 3),
(120, 'Tina', 61000, 2);

-- 3 Write a query to get employee names with their department names.
SELECT d.dept_name , e.emp_name
FROM departments d
LEFT JOIN employee e
ON d.dept_id = e.dept_id;

-- 4 Write a query to find employees whose salary is above the average salary.
SELECT emp_name FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee);

-- 5. Write a query to find the department with the highest total salary.
SELECT dept_name FROM departments
WHERE dept_id = (SELECT dept_id FROM employee
ORDER BY salary DESC LIMIT 1);

-- 🔥 Section 4: Practical – Hard (Bonus Challenges)

-- Write a query to get the top 2 highest salaries in each department.

SELECT * FROM departments;

SELECT emp_name , salary ,dept_id 
FROM employee e
WHERE salary = (
	SELECT salary
    FROM employee
    ORDER BY salary LIMIT 2;
);