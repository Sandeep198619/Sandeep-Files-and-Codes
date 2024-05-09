use training
SELECT * FROM Employee where salary < 70000;

--Write an SQL query to retrieve the names of all employees in the IT department.
select emp_name,salary,dept from Employee where dept='IT'

--Create a query to find the average salary of all employees.
select AVG(salary) avg_sal from Employee

--Write a query to list the employees who joined the company in 2020.
select * from Employee where YEAR(date_of_joining)=2020;

--Create a query to calculate the total salary expense for the Marketing department.
SELECT dept, SUM(salary) Total_expanses from Employee GROUP BY dept order by Total_expanses ASC; 

--Write an SQL statement to update the salary of employee with emp_id 6 to 58000.
UPDATE Employee SET salary=salary+500 where emp_id=4;
select * from Employee where emp_id=6;

--Create a query to retrieve the highest salary among all employees.
select MAX(Salary) Max_sal from Employee

--Write an SQL statement to delete all employees in the HR department.


--Create a query to find the employees who earn more than the average salary.
select * from employee where salary>(select AVG(salary) from Employee)

--Write an SQL query to list the employees who work in either Bangalore or Mumbai.
SELECT * from Employee where city='Bangalore' or city='Mumbai' order by city ASC;

--Create a query to count the number of male and female employees in the company.
SELECT gender, COUNT(*) Total_count from Employee where gender IN('M','F') group by gender; 

--Write an SQL query to find the employees with the highest salary in each department.
 select dept,MAX(salary) maximum_salary from Employee group by dept ORDER BY maximum_salary ASC;

--Create a query to find the employee with the lowest salary.
select * from employee where salary= (SELECT MIN(salary) from Employee)

--Write an SQL statement to add a new employee to the HR department.
insert into Employee VALUES(16,'Ravi Nagar','2021-02-12','M','HR','Delhi',64000.00);

--Create a query to calculate the total salary expense for each department.
select dept,sum(salary) total_sal_exp from Employee group by dept

--Write an SQL query to list employees who have been with the company for more than 3 years.

--Create a query to find the average salary in each department.
SELECT dept,AVG(salary) Avg_Salary from employee group by dept;

--Write an SQL statement to update the city of employee with emp_id 7 to "Noida."
UPDATE employee set city='Noida' where emp_id=7;

--Create a query to find the department with the most employees.
select COUNT(*) no_of_emp ,dept from Employee group by dept order by no_of_emp ASC
select COUNT(dept) no_of_emp, dept from Employee group by dept order by no_of_emp DESC;

--Write an SQL query to retrieve the employees who earn a salary between 55000 and 65000.
select * from Employee where salary BETWEEN 55000 and 65000 order by salary ASC;

--Create a query to list the employees who joined in descending order of their joining date.
select * from Employee order by  date_of_joining DESC; 

--Write an SQL statement to delete employees who earn less than 55000.
Delete  from Employee where salary <53500

--Create a query to count the number of employees in each city.
select COUNT(emp_id) as No_of_emp,city from Employee group by city

--Write an SQL query to find the employees with names starting with "A."
select * from Employee where emp_name like 'A%'

--Create a query to calculate the total salary expense for all female employees.
select  SUM(salary) as Total_salary_of_Female from Employee where gender='F'
select gender,SUM(salary) total_sal from Employee group by gender

--Write an SQL query to find the employees who have joined before "2019-01-01" and have salaries greater than 60000.
select * from Employee where date_of_joining<'2019-01-01' and salary>60000
