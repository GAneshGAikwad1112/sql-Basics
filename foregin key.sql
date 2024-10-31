CREATE DATABASE school3;

USE school3;

CREATE TABLE IF NOT EXISTS dept(
id INT PRIMARY KEY,
name VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS teacher(
id INT PRIMARY KEY,
name VARCHAR(20),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept(id) 
ON UPDATE CASCADE 
ON DELETE CASCADE
);

INSERT INTO dept 
(id, name)
VALUES
(101, "english"),
(102, "IT");

SELECT * FROM dept; 

UPDATE dept
SET id = 103 WHERE id = 102;

INSERT INTO teacher 
(id, name, dept_id)
VALUES
(101, "sir", 101),
(102, "sir", 102);

SELECT * FROM teacher;

drop table dept;
drop table teacher;