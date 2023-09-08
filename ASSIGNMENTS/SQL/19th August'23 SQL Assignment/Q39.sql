use ineuron2;

CREATE TABLE Calls (
    from_id INT,
    to_id INT,
    duration INT
);

INSERT INTO Calls (from_id, to_id, duration)
VALUES
    (1, 2, 59),
    (2, 1, 11),
    (1, 3, 20),
    (3, 4, 100),
    (3, 4, 200),
    (3, 4, 200),
    (4, 3, 499);
    
/*Q39.Write an SQL query to report the number of calls and the total call duration between each pair of
distinct persons (person1, person2) where person1 < person2.*/
    
SELECT LEAST(from_id,to_id) as person1,
       GREATEST(from_id,to_id) as person2,
       COUNT(duration) as call_count,
       SUM(duration) as total_duration
FROM Calls
GROUP BY person1, person2;
