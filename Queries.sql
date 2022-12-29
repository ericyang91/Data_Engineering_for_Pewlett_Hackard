-- Listing the employee ID, last name, first name, sex, and salary of each employee.

select Employees_ID, Last_Name, First_Name, Sex, 
(select salary
	from Salaries
	where Employee_Information.Employees_ID = Salaries.Employees_ID)
from Employee_Information;

-- Listing the first name, last name, and hire date for the employees who were hired in 1986.

select First_Name, Last_Name, Hire_Date
from Employee_Information
where extract(year from Hire_Date) = 1986;

-- Listing the manager of each department along with their department number, department name,
-- employee number, last name, and first name.

select m.employees_id, m.departments_id, d.departments_name, e.last_name, e.first_name
from managers_department as m
join departments as d
	on m.departments_id = d.departments_id
join employee_information as e
	on m.employees_id = e.employees_id;
	
-- Listing the department number for each employee along with that employee's employee number,
-- last name, first name, and department name.

select ed.employees_id, ed.departments_id, d.departments_name, e.last_name, e.first_name
from employees_department as ed
join departments as d
	on ed.departments_id = d.departments_id
join employee_information as e
	on ed.employees_id = e.employees_id;
	
-- Listing first name, last name, and sex of each employee whose first name is Hercules and whose
-- last name begins with the letter B.

select first_name, last_name, sex
from employee_information
where first_name = 'Hercules' and last_name like 'B%';

-- Listing each employee in the Sales department, including their employee number, last name, and
-- first name.

select ed.employees_id, d.departments_name, e.last_name, e.first_name
from employees_department as ed
join departments as d
	on ed.departments_id = d.departments_id and d.departments_name = 'Sales'
join employee_information as e
	on ed.employees_id = e.employees_id;
	
-- Listing each employee in the Sales and Development departments, including their employee number,
-- last name, first name, and department name.

select ed.employees_id, e.last_name, e.first_name, d.departments_name
from employees_department as ed
join employee_information as e
	on ed.employees_id = e.employees_id
join departments as d
	on ed.departments_id = d.departments_id and (d.departments_name = 'Sales' or d.departments_name = 'Development');

-- Listing the frequency counts, in descending order, of all the employee last names (that is, how
-- many employees share each last name).

select last_name, count(employees_id) as last_name_count
from employee_information
group by last_name
order by last_name_count desc;