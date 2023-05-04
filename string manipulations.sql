
-- string manipulations

select 
upper(first_name) as first_name_upper,
lower(last_name) as last_name_lower
from employees;

select email,
 length(email) as email_length
from employees;

select 
length('   hello     ') as hello_no_trim,
length('hello') as hello_without_spaces,
length(trim('    hello     ')) as hello_trim;

-- conc,wild card, boolean expresion

select first_name,last_name,
concat(first_name, " " ,last_name) as full_name
from employees;

select first_name,last_name,
concat(first_name, " " ,last_name, ' makes salary ' , salary) as full_name_salary
from employees;

select
concat(first_name, " " ,last_name) as full_name,
salary,
(salary < 2000) as less_than_2000
from employees;

select
concat(first_name, " " ,last_name) as full_name,
salary,
gender,
(salary < 2000 and gender = "F") as less_than_2000_female
from employees;

select email,
(email like '%.com%') as dotcom_flag
from employees;

-- string manipulations substring..

select email,
substring(email from 5)
from employees;

select email,
position('@' in email)
from employees;

select email,
substring(email from position('@' in email)+1)
from employees;

select 
email,
COALESCE(email,'no provider email')
from employees;
