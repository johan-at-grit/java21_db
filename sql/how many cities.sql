-- Hur många städer finns det i Sverige?

select count(*)
from country
join city on country.country_id = city.country_id
where country.country = 'sweden'
