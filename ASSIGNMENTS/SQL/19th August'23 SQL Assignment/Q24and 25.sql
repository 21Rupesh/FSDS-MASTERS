use ineuron;

CREATE TABLE Activity (
    player_id INT,
    device_id INT,
    event_date DATE,
    games_played INT,
    PRIMARY KEY (player_id, event_date)
);

INSERT INTO Activity (player_id, device_id, event_date, games_played)
VALUES
    (1, 2, '2016-03-01', 5),
    (1, 2, '2016-05-02', 6),
    (2, 3, '2017-06-25', 1),
    (3, 1, '2016-03-02', 0),
    (3, 4, '2018-07-03', 5);
    
#Q24.Write an SQL query to report the first login date for each player.

select  player_id, min(event_date) as first_login
from activity
group by player_id;

#Q25.Write an SQL query to report the device that is first logged in for each player.

select  player_id, min(device_id) as device_id
from activity
group by player_id;
