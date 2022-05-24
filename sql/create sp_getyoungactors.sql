DELIMITER $$

create procedure sp_getyoungactors( IN age int)
BEGIN

select *
from actors
where actor_age < age;

END $$
DELIMITER ;


