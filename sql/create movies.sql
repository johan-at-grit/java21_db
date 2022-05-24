drop database if exists movies;
create database if not exists movies;
use movies;

drop table if exists director;
create table if not exists director(
	director_id int auto_increment,
    director_name varchar(50) not null,
    city_name varchar(50) default 'Malmo',
    --     address_id int not null,
    primary key (director_id)
);

create index
on director (city_name)

drop table if exists genre;
create table if not exists genre(
	genre_id int auto_increment,
	genre varchar(20) not null unique,
    primary key (genre_id)
);

drop table if exists releasedate;
create table if not exists releasedate(
	releasedate_id int auto_increment,
    releasedate year not null,
    primary key (releasedate_id)
);

drop table if exists movies;
create table if not exists movies(
	movie_id int auto_increment,
    title varchar(50) not null,
    director_id int not null,
    releasedate_id int not null,
    primary key (movie_id),
    foreign key (director_id) references director (director_id), -- References the key in the other table and connects it
    foreign key (releasedate_id) references releasedate (releasedate_id)
);

drop table if exists moviegenres;
create table if not exists moviegenres(
    movie_id int not null,
    genre_id int not null,
    foreign key (movie_id) references movies (movie_id),
    foreign key (genre_id) references genre (genre_id)
);

drop table if exists address;
create table if not exists address(
	address_id int auto_increment,
    address varchar(50) not null,
    postalcode smallint not null,
    state varchar(50) default 'Scania',
    primary key (address_id),
    Check ( state != 'sormland' )
);

create index
on address ( address, postalcode )

drop table if exists actor;
create table if not exists actor(
	actor_id int auto_increment,
    actor_name varchar(50) not null,
	hometown varchar(50) default 'Malmo',
    actor_age tinyint(3) not null,
    address_id int not null,
    primary key (actor_id),
	foreign key (address_id) references address (address_id),
    Check ( actor_age >= 18 AND actor_age < 67)
);

drop table if exists actorrelations;
create table if not exists actorrelations(
	movie_id int not null,
    actor_id int not null,
    foreign key (movie_id) references movies (movie_id),
    foreign key (actor_id) references actor (actor_id)
);
