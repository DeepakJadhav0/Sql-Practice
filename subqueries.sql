-- Subqueries - are Queries inside a Query

SELECT column1
FROM table1
WHERE column2 = (SELECT columnX FROM table2 WHERE condition);

-- Multiple Rows Query 

SELECT name
FROM students
WHERE student_id IN (
    SELECT DISTINCT student_id
    FROM student_courses
);

-- ALl - Compare the value with all the values of suquery

SELECT dept_name
FROM departments
WHERE dept_id > ALL (
    SELECT dept_id
    FROM students
    WHERE dept_id IS NOT NULL
);

-- ANY - comapere theend value with any one value true its returns

SELECT dept_name
FROM departments
WHERE dept_id > ANY (
    SELECT dept_id
    FROM students
    WHERE dept_id IS NOT NULL
);

