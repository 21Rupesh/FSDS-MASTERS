create database ineuron1;
use ineuron1;

create table employee(
employee_id int,
team_id int,
primary key(employee_id)
);

insert into employee values(1,8),(2,8),(3,8),(4,7),(5,9),(6,9);

select e.employee_id,
(select count(team_id) from Employee where e.team_id = team_id) 
as team_size
from Employee e;
