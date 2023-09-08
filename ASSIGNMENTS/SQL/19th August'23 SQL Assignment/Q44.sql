use ineuron2;

CREATE TABLE Employee (
    id INT PRIMARY KEY,
    `name` VARCHAR(25),
    department VARCHAR(25),
    managerId INT
);

INSERT INTO Employee (id, `name`, department, managerId)
VALUES
    (101, 'John', 'A', NULL),
    (102, 'Dan', 'A', 101),
    (103, 'James', 'A', 101),
    (104, 'Amy', 'A', 101),
    (105, 'Anne', 'A', 101),
    (106, 'Ron', 'B', 101);
    
#Q44.Write an SQL query to report the managers with at least five direct reports.

select name from employee where id in 
(select managerId from employee group by managerId
having (count(id)>=5));

