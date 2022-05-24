use movies;

select movies.title, group_concat(genre.genre separator ' * ')
from movies
join moviegenres on movies.movie_id = moviegenres.movie_id
join genre on moviegenres.genre_id = genre.genre_id
group by movies.title
