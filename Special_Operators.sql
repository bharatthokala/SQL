#SPECIAL OPERATORS
SELECT * FROM students WHERE branch IN ('CSE','AIML','ECE');
SELECT * FROM students WHERE city IN ('Hyderabad','Tirupati');
SELECT * FROM students WHERE age BETWEEN 18 AND 21;
SELECT * FROM students WHERE cgpa BETWEEN 8.0 AND 9.0;
SELECT * FROM students WHERE name LIKE "A%";
SELECT * FROM students WHERE name LIKE "%a";
SELECT * FROM students WHERE name LIKE "%i%";
SELECT * FROM students WHERE LENGTH(name)=5;
SELECT * FROM students WHERE name LIKE '_a%';
SELECT * FROM students WHERE name LIKE "A%" AND '%r%';
ALTER TABLE students ADD COLUMN email VARCHAR(50);
SELECT * FROM students WHERE email IS NULL;
SELECT * FROM students WHERE email IS NOT NULL;
SELECT * FROM students WHERE branch NOT IN ('CSE','AIML');
