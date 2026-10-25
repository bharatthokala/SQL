#LOGICAL OPERATORS
SELECT * FROM students WHERE branch='AIML' AND cgpa>8.5;
SELECT * FROM students WHERE branch='CSE' AND age<20;
SELECT * FROM students WHERE branch='AIML' OR branch='ECE';
SELECT * FROM students WHERE cgpa>9 OR age<18;
SELECT * FROM students WHERE branch!='CSE' AND cgpa>8;
SELECT * FROM students WHERE city='Hyderabad' AND branch IN ('CSE','AIML');
SELECT * FROM students WHERE age>18 AND age<22 AND cgpa>8;
