select 
employee_id,
first_name,
last_name,
salary,
case 
when salary < 2000 then 'low pay' 
when salary >= 2000 then 'high pay'
else 'no pay'
end
from employees
order by salary desc;

select 
employee_id,
first_name,
last_name,
salary,
case 
when salary < 2000 then 'low pay' 
when salary between 2000 and 3000 then 'medium pay'
when salary >= 2000 then 'high pay'
else 'no pay'
end
from employees
order by salary desc;

select a.pay_category,count(*)
from(select
employee_id,
first_name,
last_name,
salary,
case 
when salary < 2000 then 'low pay'
when salary between 2000 and 3000 then 'medium pay' 
when salary >= 2000 then 'high pay'
else 'no pay'
end as pay_category
from employees
order by salary desc)a
group by a.pay_category; 

select 
sum(case when salary < 2000 then 1 else 0 end) as low_pay,
sum(case when salary between 2000 and 3000 then 1 else 0 end)as medium_pay,
sum(case when salary >3000 then 1 else 0 end)as hig_pay
from employees;