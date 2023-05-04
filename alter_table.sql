alter table employees add column gender varchar(15);
alter table shops rename column coffee_Shop_id to coffee_shop_id;

update  employees
set coffee_shop_id = 1
where employee_id = 9;

update  shops
set city_id = 1
where coffee_shop_id = 1;
