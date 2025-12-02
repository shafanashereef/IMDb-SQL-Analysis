use imdb;

select * from actors;
select * from directors;
select * from directors_genres;
select * from movies;
select * from movies_directors;
select * from movies_genres;
select * from roles;

-- 1. List all actors (first name, last name, gender) from the actors table: 
select first_name, last_name, gender from actors;

-- 2. Find the number of movies directed by each director: 
select d.first_name, d.last_name, count(md.movie_id) as num_movies
from directors d
inner join movies_directors md on d.id = md.director_id
group by d.id, d.first_name, d.last_name;

#select director_id, count(movie_id)as no_movies from movies_directors group by director_id ;

-- 3. List all movies from the movies table released after the year 2000: 
select name, year 
from movies 
where year>2000;

-- 4. Find the top 5 movies with the highest rank score: 
select name, rankscore 
from movies order by rankscore desc 
limit 5;

-- 5. Count the number of male and female actors: 
select gender, count(*) num_actors 
from actors 
group by gender;

-- 6. Find the actors who played 'Demon' role in any movie: 
select a.first_name, a.last_name,r.role 
from actors a
inner join roles r on a.id=r.actor_id
where r.role='demon' ;

-- 7. List all genres of movie with movie id = 1 belongs to: 
select genre 
from movies_genres 
where movie_id=1;

-- 8. Find all movies directed by 'Anthony Abrams': 
select  m.name as movie_name, m.year, m.rankscore
from directors d
inner join movies_directors md on d.id = md.director_id
inner join movies m on md.movie_id=m.id
where d.first_name='Anthony' and d.last_name='Abrams';

-- 9. Count the number of movies in each genre: 
select genre, count(movie_id) num_movies 
from movies_genres 
group by genre;

-- 10. Find the top 5 directors with the highest average rank score: 
select d.first_name, d.last_name, avg(m.rankscore) as avg_rankscore
from directors d
inner join movies_directors md on d.id = md.director_id
inner join movies m on md.movie_id = m.id
group by d.id, d.first_name, d.last_name
order by avg_rankscore desc
limit 5;

-- 11. List all the directors who have directed movies in more than one genre:
select d.first_name, d.last_name, count(dg.genre) num_genres
from directors d
inner join directors_genres dg on d.id = dg.director_id
group by d.id, d.first_name, d.last_name 
having count(dg.genre)>1;
 
-- 12. Find all actors who have worked in movies from the 'Action' genre: 
select distinct a.first_name, a.last_name
from actors a
inner join roles r on a.id = r.actor_id
inner join movies_genres mg on r.movie_id = mg.movie_id
where mg.genre = 'action';

-- 13. Find all actors who have acted in more than 5 movies: 
select a.first_name, a.last_name, count(r.movie_id) as num_movies
from actors a
inner join roles r on a.id = r.actor_id
group by a.id, a.first_name, a.last_name
having count(r.movie_id) > 5;

-- 14. List all movies along with their directors and genres: 
select m.name as movie_name, d.first_name as director_first_name, 
d.last_name as director_last_name, mg.genre
from movies m
left outer join movies_directors md on m.id = md.movie_id
left outer join directors d on md.director_id = d.id
left outer join movies_genres mg on m.id = mg.movie_id
order by m.name;

-- 15. Find the genre in which the highest number of directors have worked:
select genre, count(director_id) as num_directors
from directors_genres
group by genre
order by num_directors desc
limit 1;
