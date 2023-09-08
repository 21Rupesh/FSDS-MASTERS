use ineuron3;

CREATE TABLE Players (
    player_id INT PRIMARY KEY,
    group_id INT
);

INSERT INTO Players (player_id, group_id)
VALUES
    (15, 1),
    (25, 1),
    (30, 1),
    (45, 1),
    (10, 2),
    (35, 2),
    (50, 2),
    (20, 3),
    (40, 3);


CREATE TABLE Matches (
    match_id INT PRIMARY KEY,
    first_player INT,
    second_player INT,
    first_score INT,
    second_score INT
);

INSERT INTO Matches (match_id, first_player, second_player, first_score, second_score)
VALUES
    (1, 15, 45, 3, 0),
    (2, 30, 25, 1, 2),
    (3, 30, 15, 2, 0),
    (4, 40, 20, 5, 2),
    (5, 35, 50, 1, 1);
    
/*Each row is a record of a match, first_player and second_player contain the player_id of each match.
first_score and second_score contain the number of points of the first_player and second_player respectively.
You may assume that, in each match, players belongs to the same group.
The winner in each group is the player who scored the maximum total points within the group. In the case of a tie, the lowest player_id wins.

Write an SQL query to find the winner in each group.*/

select group_id,player_id from 
(select group_id,player_id,sum(
    case when player_id = first_player then first_score
         when player_id = second_player then second_score
         end
) as totalScores
from Players p,Matches m
where p.player_id = m.first_player
or p.player_id = m.second_player
group by group_id,player_id
order by group_id,totalScores desc,player_id) as temp
group by group_id
order by group_id,totalScores desc,player_id;