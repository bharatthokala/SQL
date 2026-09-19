DROP DATABASE employee;
CREATE DATABASE employee;
USE employee;
CREATE TABLE employee(
	id INT,
    ename VARCHAR(100),
    age INT,
    dept VARCHAR(100),
    salary INT
);
INSERT INTO employee VALUES
(1,"Ravi",25,"IT",50000),
(2,"Anil",28,"HR",45000),
(3,"Priya",24,"IT",60000),
(4,"Kiran",30,"Finance",70000),
(5,"Sneha",26,"IT",55000);
SELECT * FROM employee;
SELECT ename FROM employee;
SELECT * FROM employee
SELECT * FROM employee
WHERE salary>50000;
SELECT * FROM employee
WHERE dept="IT" or dept="HR";
SELECT * FROM employee
WHERE age<27;
SELECT * FROM employee
WHERE dept="IT" and salary>50000;
SELECT * FROM employee
ORDER BY salary DESC
LIMIT 2;
SELECT ename,salary FROM employee
ORDER BY salary DESC;