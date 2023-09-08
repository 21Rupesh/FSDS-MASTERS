use ineuron;

CREATE TABLE Employees (
    id INT PRIMARY KEY,
    `name` VARCHAR(25)
);

INSERT INTO Employees (id, `name`)
VALUES
    (1, 'Alice'),
    (7, 'Bob'),
    (11, 'Meir'),
    (90, 'Winston'),
    (3, 'Jonathan');

CREATE TABLE EmployeeUNI (
    id INT PRIMARY KEY,
    unique_id INT
);

INSERT INTO EmployeeUNI (id, unique_id)
VALUES
    (3, 1),
    (11, 2),
    (90, 3);
    
#Q32.Write an SQL query to show the unique ID of each user, If a user does not have a unique ID replace just
#   show null.

select eu.unique_id, e.`name`
from EmployeeUNI eu
right join Employees e on eu.id = e.id
order by e.`name`;
