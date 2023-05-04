select coffee_shop_id, count(employee_id)
from employees
group by coffee_shop_id;

select coffee_shop_id, sum(salary)
from employees
group by coffee_shop_id;

select 
coffee_shop_id,
count(*) as num_of_empl,
round(avg(salary),0) as avg_sal,
min(salary) as min_sal,
max(salary) as max_sal,
sum(salary) as sum_sal
from employees
group by coffee_shop_id
order by num_of_empl desc;

select 
coffee_shop_id,
count(*) as num_of_empl,
round(avg(salary),0) as avg_sal,
min(salary) as min_sal,
max(salary) as max_sal,
sum(salary) as sum_sal
from employees
group by coffee_shop_id
having count(*) >1 
order by num_of_empl desc;

select 
coffee_shop_id,
count(*) as num_of_empl,
round(avg(salary),0) as avg_sal,
min(salary) as min_sal,
max(salary) as max_sal,
sum(salary) as sum_sal
from employees
group by coffee_shop_id
having count(salary)<2000 
order by num_of_empl desc;


