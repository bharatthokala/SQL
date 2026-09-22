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
DROP DATABASE college;