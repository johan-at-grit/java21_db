drop database if exists movies;
create database if not exists movies;
use movies;

/*-----------------*/

drop table if exists director;
create table if not exists director (
  director_id int auto_increment,
  director_name varchar(50)  NOT NULL,
  city_name varchar(50) default 'Malmoe',
  primary key (director_id)
);

drop table if exists movies;
create table if not exists movies (
  movie_id int auto_increment,
  movie_name varchar(50) NOT NULL,
  director_id int NOT NULL,
  primary key (movie_id),
  foreign key (director_id) references director (director_id)
);

/*-----------------*/

insert into director (director_name)
VALUES ('Steven');

insert into director (director_name)
VALUES ('George');

insert into director (director_name, city_name)
VALUES ('Johan', 'Helsingborg');

/*-----------------*/

insert into movies (movie_name, director_id)
values ('lucia tärnornas krig', 2);

insert into movies (movie_name, director_id)
values ('ålderdomshemsparken', 1);

/*-----------------*/

select *
from movies
join director on director.director_id = movies.director_id;

