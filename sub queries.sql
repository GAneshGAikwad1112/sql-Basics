CREATE DATABASE IF NOT EXISTS school;

USE school;

DROP TABLE IF EXISTS student;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(20),
marks INT
);

INSERT INTO student 
(rollno, name, marks)
VALUES
(101, "anil",78),
(102, "bhumika",93 ),
(103, "chetan",85 ),
(104, "dhruv",96 ),
(105, "emanuel",92 ),
(106," farah",82);

SELECT * FROM student;

SELECT AVG (marks)
FROM student ;

SELECT 	name 
FROM student
WHERE  marks > 87.667;