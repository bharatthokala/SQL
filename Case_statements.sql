#CASE STATEMENTS
SELECT name,cgpa,
	CASE
		WHEN cgpa>=9.0 THEN 'Excellent'
        WHEN cgpa>=8.0 THEN 'Good'
        ELSE 'Needs improvement'
        END AS category
FROM students;
SELECT name,salary,
	CASE
    WHEN salary>=60000 THEN 'High'
    WHEN salary>=50000 THEN 'Medium'
    ELSE 'Low salary'
    END AS category
FROM employee;
SELECT name,cgpa,
	CASE
    WHEN cgpa>=8.5 THEN 'Eligible'
    ELSE 'Not eligible'
    END AS category
FROM students;
SELECT name,age,
	CASE
    WHEN age<=25 THEN 'Fresher'
    WHEN age<=30 THEN 'Young'
    ELSE 'Mid-aged'
    END AS category
FROM employee;
SELECT name,department,
	CASE 
    WHEN department='IT' THEN 'Works in Information Technology'
    WHEN department='HR' THEN 'Handles Human Resources'
    WHEN department='Finance' THEN 'Manages Financial Operations'
    WHEN department='Marketing' THEN 'Handles Marketing Activities'
    ELSE 'Department Not Recognized'
    END AS dept_note
FROM employee;
SELECT
	CASE
    WHEN cgpa>=9.0 THEN 'Excellent'
    WHEN cgpa>=8.0 AND cgpa<9.0 THEN 'Good'
    ELSE 'Need imporvement'
END AS category,
    COUNT(*) AS total
FROM students GROUP BY category;
SELECT name, department,
    CASE
        WHEN department = 'IT' THEN 'Technology Team'
        WHEN department = 'HR' THEN 'People Management'
        WHEN department = 'Finance' THEN 'Financial Services'
        WHEN department = 'Marketing' THEN 'Promotion Team'
        ELSE 'Other Department'
    END AS label
FROM employee;
SELECT name,salary,
	CASE
		WHEN salary>=75000 THEN salary*0.15
        WHEN salary>=50000 THEN salary*0.10
        ELSE salary*0.05
	END AS bouns
FROM employee;
SELECT name, cgpa,
    CASE
        WHEN cgpa >= 5.0 THEN 'Pass'
        ELSE 'Fail'
    END AS status
FROM students;
SELECT name, cgpa,
    CASE
        WHEN cgpa >= 9.0 THEN 'Excellent'
        WHEN cgpa >= 8.0 THEN 'Very Good'
        WHEN cgpa >= 7.0 THEN 'Good'
        WHEN cgpa >= 5.0 THEN 'Average'
        ELSE 'Poor'
    END AS performance
FROM students;
