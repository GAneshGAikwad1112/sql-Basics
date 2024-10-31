CREATE DATABASE IF NOT EXISTS school;

USE school;

DROP TABLE IF EXISTS student;

CREATE TABLE student(
student_id INT PRIMARY KEY,
name VARCHAR(20),
emp_id INT
);

INSERT INTO student 
(student_id, name, emp_id)
VALUES
(101, "adam",103),
(102, "bob",null ),
(103," casey",102);

CREATE TABLE cources(
student_id INT PRIMARY KEY,
cources VARCHAR(20)
);

INSERT INTO cources 
(student_id, cources)
VALUES
(102, "english"),
(105, "math"),
(103, "science"),
(107, "computer");

SELECT *
FROM student
INNER JOIN cources
ON student.student_id = cources.student_id;

SELECT *
FROM student
LEFT JOIN cources
ON student.student_id = cources.student_id;

SELECT *
FROM student
RIGHT JOIN cources
ON student.student_id = cources.student_id;

SELECT * FROM student as a
LEFT JOIN cources as b
ON a.student_id = b.student_id
UNION
SELECT * FROM student as a
RIGHT JOIN cources as b
ON a.student_id = b.student_id; 

SELECT *
FROM student as a 
LEFT JOIN cources as b
ON a.student_id = b.student_id
WHERE b.student_id IS NULL;

SELECT *
FROM student as a 
RIGHT JOIN cources as b
ON a.student_id = b.student_id
WHERE a.student_id IS NULL;

SELECT a.name as emp_name, b.name
FROM student as a
JOIN student as b
on a.student_id = b.emp_id;

SELECT name From student
UNION
SELECT 	name FROM student;