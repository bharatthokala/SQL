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
(1, 'Ravi', 18, 'M', 'AIML',7.2),
(2, 'Anil', 20, 'M', 'CSE',7.9),
(3, 'Priya', 19, 'F', 'AIML',8.9),
(4, 'Sneha', 19, 'F', 'ECE',7.5),
(5, 'Kiran', 18, 'M', 'CSE',8.2);

INSERT INTO students (id, name, age, gender, branch,cgpa) VALUES
(6, 'Rahul', 20, 'M', 'AIML',6.5),
(7, 'Pooja', 19, 'F', 'CSE',7.9),
(8, 'Arjun', 18, 'M', 'ECE',9.5),
(9, 'Divya', 20, 'F', 'AIML',9.8),
(10, 'Vijay', 18, 'M', 'CSE',8.3);
SELECT * FROM students;
DELETE FROM students;
