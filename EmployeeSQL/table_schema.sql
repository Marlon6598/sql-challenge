create table departments(
	dept_no varchar(30) not null PRIMARY KEY,
	dept_name varchar(30) not null
);

create table titles(
	title_id varchar(30) not null PRIMARY KEY,
	title varchar(30) not null
);

create table employees(
	emp_no int not null PRIMARY KEY,
	emp_title_id varchar(30) not null,
	birth_date date not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	sex varchar(30),
	hire_date date not null,
	FOREIGN KEY (emp_title_id) references titles(title_id)
);

create table dept_emp(
	emp_no int not null ,
	dept_no varchar(30) not null,
	FOREIGN KEY (emp_no) references employees(emp_no),
	FOREIGN KEY (dept_no) references departments(dept_no)
);

create table dept_manager(
	dept_no varchar(30) not null,
	emp_no int not null,
	FOREIGN KEY (dept_no) references departments(dept_no),
	FOREIGN KEY (emp_no) references employees(emp_no)
);

create table salaries(
	emp_no int not null,
	salary int not null,
	FOREIGN KEY (emp_no) references employees(emp_no)
);