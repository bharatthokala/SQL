#STRING FUNCTIONS
SELECT UPPER(name) FROM students;
SELECT LOWER(name) FROM students;
SELECT LENGTH(name) FROM students;
SELECT TRIM(name) FROM students;
SELECT CONCAT(name,branch) FROM students;
SELECT LEFT(name,3) FROM students;
SELECT RIGHT(name,2) FROM students;
SELECT REPLACE(branch,'ECE','CS') FROM students;
SELECT * FROM students WHERE LENGTH(name)=6;
SELECT REVERSE(name) FROM students;
SELECT  DISTINCT branch,LENGTH(branch) FROM students;
SELECT SUBSTRING(name,2,4) FROM students;
