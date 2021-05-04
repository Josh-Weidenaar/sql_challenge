Select 
	e1.emp_no, e1.last_name, e1.first_name, e1.sex, s1.salary
from "Employee" as e1
LEFT JOIN "Salaries" AS s1  
ON e1.emp_no=s1.emp_no;


select e1.last_name, e1.first_name, e1.hire_date
from "Employee" as e1 
where date_part('year',e1.hire_date) = 1986;

select 
	d1.dept_no as "dept. number", 
	d1.dept_name as "dept. name",
	dm1.emp_no as "employee number",
	e1.last_name as "last name",
	e1.first_name as "first name"
from "Departments" as d1
	Join "Dept_manager" as dm1
	on (d1.dept_no = dm1.dept_no)
		Join "Employee" as e1
		on (dm1.emp_no = e1.emp_no);

select
	de1.emp_no as "employee number",
	e1.last_name as "last name",
	e1.first_name as "first name",
	d1.dept_name as "department name"
from "Dept_emp" as de1
	left join "Employee" as e1
	on (de1.emp_no = e1.emp_no)
		inner join "Departments" as d1
		on (de1.dept_no = d1.dept_no);

Select 
	e1.last_name as "last name",
	e1.first_name as "first name",
	e1.sex as "employee sex"
from "Employee" as e1
	where e1.first_name = 'Hercules' 
	and	e1.last_name like 'B%';

Select 
	d1.dept_name as "Department Name",
	de1.emp_no as "Employee Number",
	e1.last_name as "last name",
	e1.first_name as "first name"
from "Departments" as d1
	join "Dept_emp" as de1
	on (d1.dept_no = de1.dept_no)
		join "Employee" as e1
		on (de1.emp_no = e1.emp_no)
where d1.dept_no = 'd007';

Select 
	d1.dept_name as "Department Name",
	de1.emp_no as "Employee Number",
	e1.last_name as "last name",
	e1.first_name as "first name"
from "Departments" as d1
	join "Dept_emp" as de1
	on (d1.dept_no = de1.dept_no)
		join "Employee" as e1
		on (de1.emp_no = e1.emp_no)
where d1.dept_no = 'd007'
or d1.dept_no =	'd005'
order by d1.dept_name;

select 
	e1.last_name as "Last Name",
	count(e1.last_name) as "Last Name Count"
from "Employee" as e1
group by e1.last_name
order by count(e1.last_name) desc;
