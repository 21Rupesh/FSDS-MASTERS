use ineuron;


# first problem

create table technology(
id int,
technology varchar(50) not null
);


insert into technology values(1, 'DS'),
(1, 'TABLEAU'),
(1, 'PYTHON'),
(1, 'SQL'),
(2, 'TABLEAU'),
(2, 'PYTHON'),
(2, 'SQL'),
(3, 'TABLEAU'),
(3, 'PYTHON'),
(3, 'SQL');

select * from technology;


select id
from technology
where technology in ('DS', 'TABLEAU', 'PYTHON', 'SQL')
group by id
having count(distinct technology)=4;



#second problem

create table product_info(
pr_id int primary key,
product_name varchar(50)
);

insert into product_info values(1001, 'Blog'),
(1002, 'Youtube'),
(1003, 'Education');

select * from product_info;
desc product_info;

create table product_info_likes(
user_id int primary key,
pr_id int,
liked_date date,
foreign key (pr_id) references product_info(pr_id)
);

insert into product_info_likes values(1, 1001, '2023-08-19'),
(2, 1003, '2023-01-18');

select * from product_info_likes;
desc product_info_likes;

select pr_id 
from product_info 
where pr_id not in (select pr_id from product_info_likes);


