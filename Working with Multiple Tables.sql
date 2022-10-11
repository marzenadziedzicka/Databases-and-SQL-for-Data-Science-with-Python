--Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table.
select * from EMPLOYEES where JOB_ID in (select JOB_IDENT from JOBS);

--Retrieve only the list of employees whose JOB_TITLE is Jr. Designer.
select * from EMPLOYEES where JOB_ID in (select JOB_IDENT from JOBS where JOB_TITLE = 'Jr. Designer');

--Retrieve JOB information and who earn more than $70,000.
select JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT 
	from jobs where JOB_IDENT IN (
		select JOB_ID from employees where SALARY > 70000 );
		
--Retrieve JOB information and whose birth year is after 1976.
select JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT 
	from jobs where JOB_IDENT IN (
		select JOB_ID from employees where YEAR(B_DATE) > 1976 );		

--Retrieve JOB information for female employees whose birth year is after 1976.
select JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT 
	from jobs where JOB_IDENT IN (
		select JOB_ID from employees where YEAR(B_DATE) > 1976 and SEX = 'F' );
