/************************
** sp_addreleasecountrycolumm
************************/
DROP PROCEDURE IF EXISTS sp_addreleasecountrycolumm;

DELIMITER $$

create procedure sp_addreleasecountrycolumm( IN defaultcountry varchar(50) )
BEGIN

CALL drop_column_if_exists('releasedate', 'country');

ALTER TABLE releasedate
ADD country varchar(50) not null;

UPDATE releasedate
SET country = defaultcountry
WHERE country = ''
and releasedate_id > 0;

END $$
DELIMITER ;
