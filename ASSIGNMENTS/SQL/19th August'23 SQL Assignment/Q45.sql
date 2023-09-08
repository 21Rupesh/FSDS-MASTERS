use ineuron1;

CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(25)
);

INSERT INTO Department (dept_id, dept_name)
VALUES
    (1, 'Engineering'),
    (2, 'Science'),
    (3, 'Law');

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(25),
    gender VARCHAR(1),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

INSERT INTO Student (student_id, student_name, gender, dept_id)
VALUES
    (1, 'Jack', 'M', 1),
    (2, 'Jane', 'F', 1),
    (3, 'Mark', 'M', 2);
    
/*Q45.Write an SQL query to report the respective department name and number of students majoring in
each department for all departments in the Department table (even ones with no current students).
Return the result table ordered by student_number in descending order. In case of a tie, order them by
dept_name alphabetically.*/

select d.dept_name, count(s.dept_id) as student_number
from Department d left join Student s
on d.dept_id=s.dept_id
group by d.dept_id
order by student_number desc, dept_name;
