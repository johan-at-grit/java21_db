/*
select *
from city
order by city_id desc
*/

/*
select *
from address
*/

/*
insert into address
(address, district, citSy_id, location, phone)
VALUES
('Hemlösagatan 4', 'skaune', 601, ST_GeomFromText('POINT(1 -1)'), '')
*/

/*
select *
from customer
*/

insert into customer
(first_name, last_name, store_id, email, address_id)
VALUES
('Karin', 'Kund', 1, 'karin.kund@sakila.org', 607)
