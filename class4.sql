CREATE DATABASE collage;

USE collage;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(20),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO student 
(rollno, name, marks, grade, city)
VALUES
(101, "Aman", 45, "C", "Pune"),
(102, "Eam", 60, "B", "Nashik"),
(103, "Elam", 58, "C", "Nagpur"),
(104, "Ram", 73, "B", "Mumbai"),
(105, "karan", 36, "D", "Pune"),
(106, "Sagar", 89, "A", "Kokan");


SELECT DISTINCT city FROM student;
SELECT * FROM student WHERE city = "Pune";
SELECT * FROM student WHERE marks > 70;
SELECT * FROM student WHERE city = "Kokan" AND marks > 70;
SELECT * FROM student WHERE marks BETWEEN 70 AND 90;
SELECT * FROM student WHERE city IN ("Kokan","Pune");
SELECT * FROM student WHERE city NOT IN ("Kokan","Pune");
SELECT marks, grade FROM student LIMIT 8;
SELECT * FROM student ORDER BY name DESC;

SELECT max(marks) FROM student;
SELECT min(marks) FROM student;
SELECT count(rollno) FROM student;
SELECT avg(marks) FROM student;

SELECT city, COUNT(name)
FROM student
GROUP BY city;

SELECT city, avg(marks)
FROM student
GROUP BY city
ORDER BY avg(marks) asc;
