use ineuron;

CREATE TABLE Ads (
    ad_id INT,
    user_id INT,
    action ENUM('Clicked', 'Viewed', 'Ignored'),
    PRIMARY KEY (ad_id, user_id)
);

INSERT INTO Ads VALUES (1, 1, 'Clicked'),
(2, 2, 'Clicked'),
(3, 3, 'Viewed'),
(5, 5, 'Ignored'),
(1, 7, 'Ignored'),
(2, 7, 'Viewed'),
(3, 5, 'Clicked'),
(1, 4, 'Viewed'),
(2, 11, 'Viewed'),
(1, 2, 'Clicked');

#Q20.Write an SQL query to find the ctr of each Ad. Round ctr to two decimal points.
#Return the result table ordered by ctr in descending order and by ad_id in ascending order in case of a
#tie.

select ad_id,
ifnull(
    round(
        avg(
            case
                when action = "Clicked" then 1
                when action = "Viewed" then 0
                else null
            end
        ) * 100,
    2),
0)
as ctr
from Ads
group by ad_id
order by ctr desc, ad_id asc;