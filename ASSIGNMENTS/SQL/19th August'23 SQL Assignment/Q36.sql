use ineuron1;

CREATE TABLE Users (
    id INT PRIMARY KEY,
    `name` VARCHAR(25)
);

INSERT INTO Users (id, `name`)
VALUES
    (1, 'Alice'),
    (2, 'Bob'),
    (3, 'Alex'),
    (4, 'Donald'),
    (7, 'Lee'),
    (13, 'Jonathan'),
    (19, 'Elvis');

CREATE TABLE Rides (
    id INT PRIMARY KEY,
    user_id INT,
    distance INT
);

INSERT INTO Rides (id, user_id, distance)
VALUES
    (1, 1, 120),
    (2, 2, 317),
    (3, 3, 222),
    (4, 7, 100),
    (5, 13, 312),
    (6, 19, 50),
    (7, 7, 120),
    (8, 19, 400),
    (9, 7, 230);
    
#Q33.Write an SQL query to report the distance travelled by each user.
#    Return the result table ordered by travelled_distance in descending order, if two or more users
#    travelled the same distance, order them by their name in ascending order.

select u.`name`, 
ifnull(sum(r.distance), 0)as travelled_distance
from users u left join rides r
on u.id = r.user_id
group by u.`name`
order by travelled_distance desc, `name` asc;

