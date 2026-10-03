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
