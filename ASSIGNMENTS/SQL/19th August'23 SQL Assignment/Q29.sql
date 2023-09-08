use ineuron;

CREATE TABLE Content (
    content_id INT PRIMARY KEY,
    title VARCHAR(50),
    Kids_content ENUM('Y', 'N'),
    content_type VARCHAR(25)
);

INSERT INTO Content (content_id, title, Kids_content, content_type)
VALUES
    (1, 'Leetcode Movie', 'N', 'Movies'),
    (2, 'Alg. for Kids', 'Y', 'Series'),
    (3, 'Database Sols', 'N', 'Series'),
    (4, 'Aladdin', 'Y', 'Movies'),
    (5, 'Cinderella', 'Y', 'Movies');

CREATE TABLE TVProgram (
    program_date DATE,
    content_id INT,
    `channel` VARCHAR(50),
    PRIMARY KEY (program_date, content_id)
);

INSERT INTO TVProgram (program_date, content_id, channel)
VALUES
    ('2020-06-10 08:00', 1, 'LC-Channel'),
    ('2020-05-11 12:00', 2, 'LC-Channel'),
    ('2020-05-12 12:00', 3, 'LC-Channel'),
    ('2020-05-13 14:00', 4, 'Disney Ch'),
    ('2020-06-18 14:00', 4, 'Disney Ch'),
    ('2020-07-15 16:00', 5, 'Disney Ch');
    

#Q29.Write an SQL query to report the distinct titles of the kid-friendly movies streamed in June 2020.

select distinct title
from Content c, TVProgram tv
where c.content_id = tv.content_id
        and Kids_content = 'Y'
        and content_type = 'Movies'
        and program_date between '2020-06-01' and '2020-06-30';

