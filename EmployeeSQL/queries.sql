select  emp.emp_no,
	emp.last_name,
	emp.first_name,
	emp.sex,
	sal.salary
from employees as emp
inner join salaries as sal
on emp.emp_no = sal.emp_no
order by emp.emp_no;

select first_name,
	last_name,
	hire_date 
from employees
where date_part('year', hire_date) = 1986
order by emp_no;

select dm.dept_no,
	dept.dept_name,
	dm.emp_no,
	emp.last_name,
	emp.first_name
from dept_manager as dm
inner join departments as dept
	on dm.dept_no = dept.dept_no
left join employees as emp
	on dm.emp_no = emp.emp_no;

select emp.emp_no,
	emp.last_name,
	emp.first_name,
	dept.dept_name
from employees as emp
inner join dept_emp
	on emp.emp_no = dept_emp.emp_no
inner join departments as dept
	on dept_emp.dept_no = dept.dept_no;

select first_name, last_name, sex from employees 
where first_name = 'Hercules'
and last_name like 'B%';

select emp.emp_no,
	emp.last_name,
	emp.first_name, 
	dept.dept_name
from departments as dept
inner join dept_emp
	on dept_emp.dept_no = dept.dept_no
inner join employees as emp
	on dept_emp.emp_no = emp.emp_no
where dept.dept_name = 'Sales';

select emp.emp_no,
	emp.last_name,
	emp.first_name,
	dept.dept_name
from employees as emp
left join dept_emp as de
	on emp.emp_no = de.emp_no
inner join departments as dept
	on de.dept_no = dept.dept_no
where dept.dept_name in ('Sales', 'Development');

select last_name, count(last_name) as freq_count
from employees
group by last_name
order by freq_count desc;

select * from employees;