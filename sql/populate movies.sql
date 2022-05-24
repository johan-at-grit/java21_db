use movies;

-- adding directors
insert into director (director_name) VALUES ('James');
insert into director (director_name) VALUES ('George');
insert into director (director_name, city_name) VALUES ('Johan', 'Helsingborg');

-- adding genres
insert into genre (genre) values ('Action');
insert into genre (genre) values ('Drama');
insert into genre (genre) values ('Horror');
insert into genre (genre) values ('Fantasy');
insert into genre (genre) values ('Sci-Fi');

-- adding years
insert into releasedate (releasedate) values (1977);
insert into releasedate (releasedate) values (2022);
insert into releasedate (releasedate) values (2009);

-- adding movies
insert into movies (title, director_id, releasedate_id) values ('Star Wars', 2, 1);
insert into movies (title, director_id, releasedate_id) values ('Avatar', 1, 3);
insert into movies (title, director_id, releasedate_id) values ('World War C#', 3, 2);

-- adding genres to movies
insert into moviegenres (movie_id, genre_id) values (1, 1);
insert into moviegenres (movie_id, genre_id) values (1, 4);
insert into moviegenres (movie_id, genre_id) values (2, 5);
insert into moviegenres (movie_id, genre_id) values (2, 2);
insert into moviegenres (movie_id, genre_id) values (3, 3);

-- adding addresses
insert into address (address, postalcode) VALUES ('Solgatan 22A', 21219);
insert into address (address, postalcode) VALUES ('Rebelvägen 27C', 23220);
insert into address (address, postalcode) VALUES ('Galgbacken 12', 19923);

-- adding actors
insert into actor (actor_name, hometown, actor_age, address_id) VALUES ('Kjell Backman', 'Staffanstorp', 44, 3);
insert into actor (actor_name, hometown, actor_age, address_id) VALUES ('Bellan Larsmård', 'Trelleborg', 62, 2);
insert into actor (actor_name, actor_age, address_id) VALUES ('Jonas Persbrandt', 33, 1);

-- adding actors to movies
insert into actorrelations (movie_id, actor_id) VALUES (1, 1);
insert into actorrelations (movie_id, actor_id) VALUES (2, 1);
insert into actorrelations (movie_id, actor_id) VALUES (3, 2);
insert into actorrelations (movie_id, actor_id) VALUES (1, 3);
