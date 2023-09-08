use ineuron;
select * from article_views;

create table article_views
(
article_id int,
author_id int,
viewer_id int,
view_date date
);
                                 
insert into article_views values (1, 3, 5, '2019-08-01'),
(1, 3, 6, '2019-08-02'),
(2, 7, 7, '2019-08-01'),
(2, 7, 6, '2019-08-02'),
(4, 7, 1, '2019-07-22'),
(3, 4, 4, '2019-07-21'),
(3, 4, 4, '2019-07-21');

#Q18.Write an SQL query to find all the authors that viewed at least one of their own articles.
#    Return the result table sorted by id in ascending order.

select distinct author_id  as id from article_views
where author_id = viewer_id
order by id ;