--Retrieve all employees whose address is in Elgin,IL.
SELECT * from EMPLOYEES where ADDRESS LIKE '%Elgin%';

--SELECT F_NAME , L_NAME
--FROM EMPLOYEES
--WHERE ADDRESS LIKE '%Elgin,IL%'

--Retrieve all employees who were born during the 1970's.
SELECT * from EMPLOYEES where B_DATE LIKE '%197%';

--Retrieve all employees in department 5 whose salary is between 60000 and 70000.
SELECT * from EMPLOYEES where SALARY BETWEEN 60000 and 70000;

--Retrieve a list of employees ordered by department ID.
SELECT * from EMPLOYEES order by DEP_ID;

--Retrieve a list of employees ordered in descending order by department ID and within each department ordered alphabetically in descending order by last name.
SELECT * from EMPLOYEES order by DEP_ID DESC, L_NAME DESC;

--In SQL problem 2 (Exercise 2 Problem 2), use department name instead of department ID. Retrieve a list of employees ordered by department name, and within each department ordered alphabetically in descending order by last name.
SELECT D.DEP_NAME , E.F_NAME, E.L_NAME
FROM EMPLOYEES as E, DEPARTMENTS as D
WHERE E.DEP_ID = D.DEPT_ID_DEP
ORDER BY D.DEP_NAME, E.L_NAME DESC;SELECT * from EMPLOYEES order by DEP_ID DESC, L_NAME DESC;

--For each department ID retrieve the number of employees in the department.
SELECT DEP_ID, count(*) from EMPLOYEES group by DEP_ID;

--For each department retrieve the number of employees in the department, and the average employee salary in the department..
SELECT DEP_ID, count(*), avg (SALARY) from EMPLOYEES  group by DEP_ID;


--Label the computed columns in the result set of SQL problem 2 (Exercise 3 Problem 2) as NUM_EMPLOYEES and AVG_SALARY.
SELECT DEP_ID, count(*) as "NUM_EMPLOYEES", avg (SALARY) AS "AVG_SALARY" 
from EMPLOYEES 
group by DEP_ID 
order by AVG_SALARY;

--In SQL problem 4 (Exercise 3 Problem 4), limit the result to departments with fewer than 4 employees.
SELECT DEP_ID, count(*) as "NUM_EMPLOYEES", avg (SALARY) AS "AVG_SALARY" 
from EMPLOYEES  
group by DEP_ID
having count(*) < 4 
order by AVG_SALARY ;


