#GROUP BY AND HAVING
SELECT branch,COUNT(name) AS S_COUNT FROM students GROUP BY branch;
SELECT branch,AVG(cgpa) AS avg_cgpa FROM students GROUP BY branch;
SELECT branch,MAX(cgpa) AS MAX_cgpa FROM students GROUP BY branch;
SELECT branch,MIN(cgpa) AS MIN_cgpa FROM students GROUP BY branch;
SELECT branch,COUNT(name) AS COUNT_students FROM students GROUP BY branch HAVING COUNT(*)>3;
SELECT branch,AVG(cgpa) AS AVG_cgpa FROM students GROUP BY branch HAVING AVG(cgpa)>8.5;
SELECT city,COUNT(NAME) AS S_COUNT FROM students GROUP BY city;
SELECT branch,AVG(age) AS avg_age FROM students GROUP BY branch;
SELECT e_role,SUM(sal) AS total FROM employee GROUP BY e_role;
SELECT e_role,SUM(sal) AS total FROM employee GROUP BY e_role HAVING SUM(sal)>200000;
SELECT branch,city FROM students GROUP BY branch,city;
SELECT MAX(AVG_cgpa) FROM(SELECT AVG(cgpa) AS AVG_cgpa FROM students GROUP BY branch)AS branch_avg;
SELECT branch,COUNT(*) AS s_count FROM students GROUP BY branch ORDER BY s_count DESC LIMIT 1;
