-- Hur många kunder finns i Sverige?

-- select customer.first_name, customer.last_name, address.address, city.city, address.district, country.country
select count(*)
from country
join city on country.country_id = city.country_id
join address on address.city_id = city.city_id
join customer on customer.address_id = address.address_id
where country.country = 'france'
