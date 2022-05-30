drop database if exists exampeldb;
create database if not exists exampeldb;
use exampeldb;

drop table if exists bilmodeller;
create table if not exists bilmodeller (
  id int auto_increment,
  namn varchar(50)  NOT NULL,
  primary key (id)
);

drop table if exists bilar;
create table if not exists bilar (
  id int auto_increment,
  farg varchar(50),
  modell_id int NOT NULL,
  primary key (id),
  foreign key (modell_id) references bilmodeller (id)
);

insert into bilmodeller (id, namn) values (1, 'Volvo');
insert into bilmodeller (id, namn) values (2, 'Porsche');
insert into bilmodeller (id, namn) values (3, 'Fiat');
insert into bilmodeller (id, namn) values (4, 'MG');

insert into bilar (farg, modell_id) values ('röd', 1);
insert into bilar (farg, modell_id) values ('gul', 1);
insert into bilar (farg, modell_id) values ('röd', 2);
insert into bilar (farg, modell_id) values ('svafrt', 3);
insert into bilar (farg, modell_id) values ('vit', 4);
insert into bilar (farg, modell_id) values ('blå', 4);

select * from bilmodeller;
select * from bilar;

/*  Denna fungerar inte!
delete from bilmodeller where namn = 'Volvo';
*/

/* denna fungerar däremot */
delete from bilar where modell_id = 1;
delete from bilmodeller where namn = 'Volvo';
