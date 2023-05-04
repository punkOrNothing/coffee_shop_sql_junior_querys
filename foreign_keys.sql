alter table employees add foreign key(coffee_shop_id)
references shops(coffee_shop_id)
on delete set null;

alter table shops add foreign key(city_id)
references location(city_id)
on delete set null;