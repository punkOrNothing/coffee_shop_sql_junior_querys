create database coffee;
use coffee;

create table employees(
employee_id int primary key auto_increment,
first_name varchar(20),
last_name varchar(20),
email varchar(30),
hire_date DATE,
salary int,
coffee_shop_id int );

create table shops(
coffee_shop_id int primary key auto_increment,
coffee_shop_name varchar(30),
city_id int);

create table location(
city_id int primary key auto_increment,
city varchar(20),
contry  varchar(20)
);

create table supliers(
coffee_shop_id int,
suplier_name varchar(50),
coffee_type varchar(30),
primary key (coffee_shop_id,suplier_name),
foreign key(coffee_shop_id) references shops(coffee_shop_id)
on delete cascade
);

create table full_info_employee(
full_info_id int primary key auto_increment,
shops_id int,
employee_id int,
location_id int,
foreign key(shops_id) references shops(coffee_shop_id),
foreign key(employee_id) references employees(employee_id),
foreign key(location_id) references location(city_id));


