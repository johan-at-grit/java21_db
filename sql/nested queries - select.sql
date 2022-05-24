use movies;

/*
select *
from actor;
*/

/*
select *
from address
*/

/*
select *
from actor
join address on actor.address_id = address .address_id
*/

/*
select actor.actor_name, count(movies.title), address.state
from actor
join actorrelations on actor.actor_id = actorrelations.actor_id
join movies on actorrelations.movie_id = movies.movie_id
join address on actor.address_id = address.address_id
group by actor.actor_name
having count(movies.title) < 2
*/

select *
from actor
join address on actor.address_id = address .address_id
where actor.actor_id IN (
  select actor.actor_id
  from actor
  join actorrelations on actor.actor_id = actorrelations.actor_id
  join movies on actorrelations.movie_id = movies.movie_id
  join address on actor.address_id = address.address_id
  group by actor.actor_name
  having count(movies.title) < 2
)
