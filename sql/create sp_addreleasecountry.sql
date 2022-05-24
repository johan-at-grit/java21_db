/************************
** sp_addreleasecountry
************************/
DROP PROCEDURE IF EXISTS sp_addreleasecountry;

DELIMITER $$

create procedure sp_addreleasecountry( IN newcountry varchar(50), IN orgcountry varchar(50) )
BEGIN

insert into releasedate (releasedate, country)
select releasedate + 1, newcountry
from releasedate
where country = orgcountry;

END $$
DELIMITER ;
