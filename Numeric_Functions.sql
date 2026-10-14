#NUMERIC FUNCTIONS
SELECT ROUND(cgpa,1) FROM students;
SELECT sal as not_new,ROUND(sal) AS new_sal FROM employee;
SELECT CEIL(cgpa) FROM students;
SELECT FLOOR(cgpa) FROM students;
SELECT ABS(age-id) FROM students;
SELECT MOD(id,2) FROM students;
SELECT SQRT(age) FROM students;
SELECT *,RAND() FROM students;
SELECT ROUND(AVG(sal),2) FROM employee;
