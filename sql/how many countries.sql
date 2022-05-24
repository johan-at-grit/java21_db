-- Hur många länder finns det som innehåller bokstaven c?

select count(*)
from country
where country like '%c%'

