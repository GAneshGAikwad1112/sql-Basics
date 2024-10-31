CREATE DATABASE temp1;
DROP DATABASE temp1;

create database temp2;

CREATE DATABASE collage;
DROP DATABASE collage;
show databases;
create database student;
use student;
CREATE table student(
id INT PRIMARY KEY,
name VARCHAR(20),
age INT NOT NULL
);

insert into student values(1, "aman", 20);
insert into student values(2, "ram",20)
DROP DATABASE temp1;
DROP DATABASE temp2;
SELECT * FROM student;

USE student;

DROP TABLE IF exists student;
show databases;


CREATE DATABASE xyz;

USE xyz;

CREATE TABLE employee_info
(id INT PRIMARY KEY,
 name VARCHAR(20)
 , salary INT);

INSERT INTO employee_info
(id, name, salary)
VALUES
(1,"adam",25000),
(2,"bob",30000),
(3,"casey",40000);

  

CREATE TABLE temp(
id int NOT NULL,
PRIMARY KEY(id)
);