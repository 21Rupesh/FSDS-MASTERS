create database ineuron3;
use ineuron3;

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    `name` VARCHAR(25),
    experience_years INT
);

INSERT INTO Employee (employee_id, `name`, experience_years)
VALUES
    (1, 'Khaled', 3),
    (2, 'Ali', 2),
    (3, 'John', 3),
    (4, 'Doe', 2);

CREATE TABLE Project (
    project_id INT,
    employee_id INT,
    PRIMARY KEY (project_id, employee_id),
    FOREIGN KEY (employee_id) REFERENCES Employee (employee_id)
);

INSERT INTO Project (project_id, employee_id)
VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 1),
    (2, 4);
    
#Q47.Write an SQL query that reports the most experienced employees in each project. In case of a tie,
#    report all employees with the maximum number of experience years.

select project_id, employee_id
from Project
join Employee
using (employee_id)
where (project_id, experience_years) in (
    select project_id, max(experience_years)
    from Project
    join Employee
    using (employee_id)
    group by project_id);

