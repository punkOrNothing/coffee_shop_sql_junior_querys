-- select options

select employee_id, first_name, last_name, salary
from employees;

select employee_id, first_name, last_name, salary
from employees where salary between 1000 and 3000;

select employee_id, first_name, last_name, hire_date
from employees;

select * from  employees where salary > 2000;

select * from employees where salary > 2000 and coffee_shop_id = 1;

select * from employees where salary < 2000 or coffee_shop_id = 1;

select * from employees where salary < 2000 and coffee_shop_id = 1
and gender = "F";

select * from supliers where not suplier_name = "BIg ben";

select * from supliers where coffee_type in ('Arabica');

select * from supliers where coffee_type  = 'Arabica'
or coffee_type  = 'Brasil';

select * from employees where not email is null; 











