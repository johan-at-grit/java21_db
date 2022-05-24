create or replace view vwmoviegenres as

select movies.title, group_concat(genre.genre separator ' * ') as "genres"
from movies
join moviegenres on movies.movie_id = moviegenres.movie_id
join genre on moviegenres.genre_id = genre.genre_id
group by movies.title