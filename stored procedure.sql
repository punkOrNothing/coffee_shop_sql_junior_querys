
DELIMITER //
CREATE PROCEDURE select_employees()
begin
select * from employees;
end //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE select_locations()
begin
select * from location;
end //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE select_shops()
begin
select * from shops;
end //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE select_suppliers()
begin
select * from supliers;
end //
DELIMITER ;

call select_employees;
call select_locations;
call select_suppliers;
call select_shops;
