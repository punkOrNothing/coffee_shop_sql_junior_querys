select s.coffee_shop_name,l.city,l.contry
from  shops s
inner join location l
on s.city_id = l.city_id; 

select
full_info_employee.full_info_id,
 shops.coffee_shop_name,location.city,location.contry,employees.first_name,
employees.salary,employees.gender
from full_info_employee  
inner join location 
on full_info_employee.location_id = location.city_id
inner join employees
on  full_info_employee.employee_id = employees.employee_id
inner join shops
on  full_info_employee.shops_id = shops.coffee_shop_id; 