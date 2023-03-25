select  emp.emp_no,
		emp.last_name,
		emp.first_name,
		emp.sex,
		sal.salary
from Employees as emp
inner join Salaries as sal
on emp.emp_no = sal.emp_no
order by emp.emp_no;

select first_name,
	   last_name,
	   hire_date 
from Employees
where date_part('year', hire_date) = 1986
order by emp_no;

select dm.dept_no,
	   dept.dept_name,
	   dm.emp_no,
	   emp.last_name,
	   emp.first_name
from Dept_manager as dm
inner join Departments as dept
	   on dm.dept_no = dept.dept_no
left join employees as emp
	   on dm.emp_no = emp.emp_no;