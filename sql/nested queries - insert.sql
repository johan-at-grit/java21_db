use movies;

insert into address (address, postalcode, state) VALUES ('Storgatan 38', 111, 'Norrlandur');

/*
select address_id
from address
where postalcode = 91235

-- VALUES ('Sverker Olafsdottir', 'Ume', 74, 3);

*/

insert into actor (actor_name, hometown, actor_age, address_id)
select 'Sverker Olafsdottir',  'Ume', 74, address_id
from address
where postalcode = 111
