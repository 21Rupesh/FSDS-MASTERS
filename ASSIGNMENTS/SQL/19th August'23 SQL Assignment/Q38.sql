use ineuron2;

CREATE TABLE Departments (
    id INT PRIMARY KEY,
    `name` VARCHAR(100)
);

INSERT INTO Departments (id, `name`)
VALUES
    (1, 'Electrical Engineering'),
    (7, 'Computer Engineering'),
    (13, 'Business Administration');

CREATE TABLE Students (
    id INT PRIMARY KEY,
    `name` VARCHAR(50),
    department_id INT
);

INSERT INTO Students (id, `name`, department_id)
VALUES
    (23, 'Alice', 1),
    (1, 'Bob', 7),
    (5, 'Jennifer', 13),
    (2, 'John', 14),
    (4, 'Jasmine', 77),
    (3, 'Steve', 74),
    (6, 'Luis', 1),
    (8, 'Jonathan', 7),
    (7, 'Daiana', 33),
    (11, 'Madelynn', 1);


/*Q38. The table has information about the id of each student at a university and the id of the department
he/she studies at.
Write an SQL query to find the id and the name of all students who are enrolled in departments that no
longer exist.*/

select s.id, s.`name`
from students s left join departments d
on s.department_id=d.id
where d.id is null;