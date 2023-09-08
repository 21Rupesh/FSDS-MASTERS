create database ineuron2;
use ineuron2;

CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(25)
);

INSERT INTO Movies (movie_id, title)
VALUES
    (1, 'Avengers'),
    (2, 'Frozen 2'),
    (3, 'Joker');

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    `name` VARCHAR(25)
);

INSERT INTO Users (user_id, `name`)
VALUES
    (1, 'Daniel'),
    (2, 'Monica'),
    (3, 'Maria'),
    (4, 'James');

CREATE TABLE MovieRating (
    movie_id INT,
    user_id INT,
    rating INT,
    created_at DATE,
    PRIMARY KEY (movie_id, user_id)
);

INSERT INTO MovieRating (movie_id, user_id, rating, created_at)
VALUES
    (1, 1, 3, '2020-01-12'),
    (1, 2, 4, '2020-02-11'),
    (1, 3, 2, '2020-02-12'),
    (1, 4, 1, '2020-01-01'),
    (2, 1, 5, '2020-02-17'),
    (2, 2, 2, '2020-02-01'),
    (2, 3, 2, '2020-03-01'),
    (3, 1, 3, '2020-02-22'),
    (3, 2, 4, '2020-02-25');
    
/*Q35.Write an SQL query to:
● Find the name of the user who has rated the greatest number of movies. In case of a tie,
return the lexicographically smaller user name.
● Find the movie name with the highest average rating in February 2020. In case of a tie, return
the lexicographically smaller movie name.*/

(select u.`name` as results from 
users u, MovieRating m
where u.user_id=m.user_id
group by u.`name`
having count(m.user_id)=(
     select max(rating_count)
	 from(
          select count(m.user_id) as rating_count
           from MovieRating m
           group by m.user_id
          ) as max_rating
)
order by u.`name`
limit 1)

union

(select m.title as results from 
movies m, MovieRating mr
where m.movie_id=mr.movie_id
and mr.created_at between '2020-02-01' and '2020-02-29'
group by mr.movie_id
having avg(mr.rating)=(
     select max(avg_rating)
	 from(
          select avg(mr.rating) as avg_rating
           from MovieRating mr
           group by mr.movie_id
          ) as avg_ratingtt
)
order by m.title
limit 1);