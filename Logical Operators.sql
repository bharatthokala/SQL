#DDL
CREATE DATABASE college;
USE college;
CREATE TABLE students(
	s_id INT,
    s_name VARCHAR(50),
    s_age INT,
    branch VARCHAR(50),
    cgpa FLOAT
);
CREATE TABLE courses(
	s_name INT,
    branch VARCHAR(50),
    c_name VARCHAR(50)
);
ALTER TABLE students ADD COLUMN email VARCHAR(50);
ALTER TABLE students MODIFY COLUMN s_name VARCHAR(100);
ALTER TABLE students RENAME TO college_students;
ALTER TABLE college_students DROP COLUMN email;
DROP TABLE courses;
SHOW TABLES;
SELECT * FROM college_students;
#DML
INSERT INTO college_students VALUES
(101,"ABC",18,"CSE",7.5),
(102,"XYZ",19,"CSE",8.2),
(103,"MNO",18,"AIML",8.9);
SELECT * FROM college_students;
SELECT s_name,s_age,cgpa FROM college_students;
SET SQL_SAFE_UPDATES=0;
UPDATE college_students SET cgpa='9.5' WHERE s_name='XYZ';
UPDATE college_students SET branch='ECE' WHERE branch='AIML';
UPDATE college_students SET branch='AIML' WHERE branch='CSE';
UPDATE college_students SET cgpa=cgpa+0.10 WHERE branch='AIML';
DELETE FROM college_students WHERE s_id='103';
DELETE FROM college_students WHERE branch='AIML';
CREATE TABLE students(
	id INT,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(1),
    branch VARCHAR(50),
    cgpa FLOAT
);
INSERT INTO students VALUES
(1, 'Ravi', 18, 'M', 'AIML', 7.2, 'Bangalore'),
(2, 'Anil', 20, 'M', 'CSE', 7.9, 'Chennai'),
(3, 'Priya', 19, 'F', 'AIML', 8.9, 'Bangalore'),
(4, 'Sneha', 19, 'F', 'ECE', 7.5, 'Hyderabad'),
(5, 'Kiran', 18, 'M', 'CSE', 8.2, 'Chennai');

INSERT INTO students (id, name, age, gender, branch, cgpa, city) VALUES
(6, 'Rahul', 20, 'M', 'AIML', 6.5, 'Hyderabad'),
(7, 'Pooja', 19, 'F', 'CSE', 7.9, 'Bangalore'),
(8, 'Arjun', 18, 'M', 'ECE', 9.5, 'Chennai'),
(9, 'Divya', 20, 'F', 'AIML', 9.8, 'Hyderabad'),
(10, 'Vijay', 18, 'M', 'CSE', 8.3, 'Bangalore');
SELECT * FROM students;
SELECT DISTINCT branch FROM students;
#DQL
ALTER TABLE students ADD COLUMN city VARCHAR(50);
SET SQL_SAFE_UPDATES=0;
DELETE FROM students WHERE city IS NULL;
SELECT DISTINCT City FROM students;
SELECT branch,COUNT(branch) AS branch_count from students GROUP BY branch;
SELECT name AS student_name FROM students;
SELECT cgpa AS student_cgpa FROM students;
SELECT name AS student_name,branch AS student_branch FROM students;
SELECT DISTINCT branch,city FROM students;
#COMPARISON OPERATORS
SELECT name FROM students WHERE age>18;
SELECT name FROM students WHERE cgpa<7.5;
SELECT name FROM students WHERE age=20;
SELECT name FROM students WHERE cgpa>=8.5;
SELECT name FROM students WHERE branch!='CSE';
SELECT name FROM students WHERE age!=19;
SELECT name FROM students WHERE cgpa>7.0 AND cgpa<8.5;
SELECT name FROM students WHERE city='Hyderabad';
#LOGICAL OPERATORS
SELECT * FROM students WHERE branch='AIML' AND cgpa>8.5;
SELECT * FROM students WHERE branch='CSE' AND age<20;
SELECT * FROM students WHERE branch='AIML' OR branch='ECE';
SELECT * FROM students WHERE cgpa>9 OR age<18;
SELECT * FROM students WHERE branch!='CSE' AND cgpa>8;
SELECT * FROM students WHERE city='Hyderabad' AND branch IN ('CSE','AIML');
SELECT * FROM students WHERE age>18 AND age<22 AND cgpa>8;
