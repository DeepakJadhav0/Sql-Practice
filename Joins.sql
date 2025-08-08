use tutorial;

SELECT * FROM students;

ALTER TABLE students
DROP column phone;

CREATE TABLE class(
class_id INT PRIMARY KEY,
class_name VARCHAR(50) NOT NULL,
class_teacher VARCHAR(50) NOT NULL,
class_start_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO class(class_id,class_name,class_teacher)
VALUES (1, '10A', 'Sharma Joshi'),
(2, '10B', 'Reena Kapoor'),
(3, '9A', 'Arun Mehta'),
(4, '10C', 'Sonal Verma'),
(5, '12A', 'Ravi Das'),
(6, '12B', 'Meena Iyer'),
(7, '11A', 'Karan Patel'),
(8, '11B', 'Nita Desai');	

SELECT * FROM class;

-- INNER JOIN

SELECT * 
FROM students s
INNER JOIN class c
ON s.class = c.class_name;

SELECT s.student_id, s.name, s.email, s.fees, c.class_teacher 
FROM students s
INNER JOIN class c
ON s.class = c.class_name;

-- LEFT JOIN 

SELECT *
FROM class c
LEFT JOIN students s
ON c.class_name = s.class;


-- RIGHT JOIN

SELECT * 
FROM students s
RIGHT JOIN class c
ON s.class = c.class_name;


-- FULL OUTER JOIN 

SELECT *
FROM class c
LEFT JOIN students s
ON c.class_name = s.class

UNION

SELECT * 
FROM students s
RIGHT JOIN class c
ON s.class = c.class_name;

----------------------------------------

