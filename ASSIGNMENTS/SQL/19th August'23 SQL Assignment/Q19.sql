use ineuron;
select * from Delivery;

CREATE TABLE Delivery (
    delivery_id INT,
    customer_id INT,
    order_date DATE,
    customer_pref_delivery_date DATE
);

INSERT INTO Delivery VALUES (1, 1, '2019-08-01', '2019-08-02'),
    (2, 5, '2019-08-02', '2019-08-02'),
    (3, 1, '2019-08-11', '2019-08-11'),
    (4, 3, '2019-08-24', '2019-08-26'),
    (5, 4, '2019-08-21', '2019-08-22'),
    (6, 2, '2019-08-11', '2019-08-13');
    
#Q19.If the customer's preferred delivery date is the same as the order date, then the order is called
#immediately; otherwise, it is called scheduled.
#Write an SQL query to find the percentage of immediate orders in the table, rounded to 2 decimal
#places.

select round(avg(order_date=customer_pref_delivery_date)*100, 2)
as immediate_order
from Delivery;





