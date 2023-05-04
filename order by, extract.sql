-- order by, limit, renaming column, distinct

select employee_id, first_name, last_name, salary
from employees
order by salary;

select employee_id, first_name, last_name, salary
from employees
order by salary desc;

select employee_id, first_name, last_name, salary
from employees
order by salary desc limit 2;

select distinct coffee_shop_id from employees;

select 
email as email_address,
hire_date as date_joined,
salary as pay
from employees;

-- extract

select 
hire_date,
extract(year from hire_date) as year,
extract(month from hire_date) as month,
extract(day from hire_date) as day
from employees;