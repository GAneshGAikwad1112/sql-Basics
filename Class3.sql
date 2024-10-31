CREATE DATABASE country;

USE country;

CREATE TABLE IF NOT EXISTS city(
id INT PRIMARY KEY,
city VARCHAR(20),
age INT
CONSTRAINT age_check CHECK (age >= 18 AND city ="Delhi")
);
INSERT INTO city
(id ,city , age )
VALUES
(1,"Delhi",56)
;

CREATE TABLE IF NOT EXISTS newTab(
age INT CHECK (age >= 18)
);

SELECT * FROM city;
SELECT * FROM newTab;

SHOW DATABASES;
SHOW TABLES;