use ineuron3;

CREATE TABLE Enrollments (
    student_id int,
    course_id int,
    grade int,
    PRIMARY KEY (student_id, course_id)
);

INSERT INTO Enrollments (student_id, course_id, grade) VALUES
(2, 2, 95),
(2, 3, 95),
(1, 1, 90),
(1, 2, 99),
(3, 1, 80),
(3, 2, 75),
(3, 3, 82);

#Q49.Write a SQL query to find the highest grade with its corresponding course for each student. In case of
#    a tie, you should find the course with the smallest course_id.
#     Return the result table ordered by student_id in ascending order.

select student_id, min(course_id) as course_id, grade
from Enrollments
where (student_id, grade) in 
    (select student_id, max(grade)
    from Enrollments
    group by student_id)
group by student_id
order by student_id asc;

