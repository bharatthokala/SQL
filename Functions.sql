#AGGREGATE FUNCTIONS
SELECT COUNT(name) FROM students;
SELECT SUM(cgpa) FROM students;
SELECT AVG(cgpa) FROM students;
SELECT MAX(cgpa) FROM students;
SELECT MIN(cgpa) FROM students;
SELECT COUNT(name) FROM students WHERE branch='AIML';
SELECT AVG(age) FROM students;
SHOW TABLES;
DROP TABLE employee;
CREATE TABLE employee(
	id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    e_role VARCHAR(50),
    sal INT
);
INSERT INTO employee (id, name, age, city, e_role, sal) VALUES
(1, 'Rahul', 25, 'Bangalore', 'IT', 50000),
(2, 'Priya', 28, 'Chennai', 'HR', 75000),
(3, 'Arjun', 24, 'Hyderabad', 'Finance', 45000),
(4, 'Sneha', 27, 'Mumbai', 'IT', 60000),
(5, 'Kiran', 30, 'Delhi', 'Marketing', 55000),
(6, 'Anil', 26, 'Pune', 'IT', 58000),
(7, 'Divya', 29, 'Bangalore', 'Finance', 65000),
(8, 'Vijay', 32, 'Chennai', 'HR', 80000),
(9, 'Pooja', 23, 'Hyderabad', 'Marketing', 42000),
(10, 'Ravi', 31, 'Mumbai', 'IT', 70000);
SELECT * FROM employee;
SELECT SUM(sal) FROM employee;
SELECT AVG(sal) FROM employee WHERE e_role='IT';
SELECT MAX(sal)-MIN(sal) AS salary_difference FROM employee;
