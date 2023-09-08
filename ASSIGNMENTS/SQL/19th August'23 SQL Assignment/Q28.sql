use ineuron1;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    `name` VARCHAR(25),
    country VARCHAR(25)
);

INSERT INTO Customers (customer_id, `name`, country)
VALUES
    (1, 'Winston', 'USA'),
    (2, 'Jonathan', 'Peru'),
    (3, 'Moustafa', 'Egypt');

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    `description` VARCHAR(25),
    price INT
);

INSERT INTO Products (product_id, `description`, price)
VALUES
    (10, 'LC Phone', 300),
    (20, 'LC T-Shirt', 10),
    (30, 'LC Book', 45),
    (40, 'LC Keychain', 2);


CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT
);

INSERT INTO Orders (order_id, customer_id, product_id, order_date, quantity)
VALUES
    (1, 1, 10, '2020-06-10', 1),
    (2, 1, 20, '2020-07-01', 1),
    (3, 1, 30, '2020-07-08', 2),
    (4, 2, 10, '2020-06-15', 2),
    (5, 2, 40, '2020-07-01', 10),
    (6, 3, 20, '2020-06-24', 2),
    (7, 3, 30, '2020-06-25', 2),
    (9, 3, 30, '2020-05-08', 3);
    
#Q28.Write an SQL query to report the customer_id and customer_name of customers who have spent at
#    least $100 in each month of June and July 2020.

select customer_id, `name`
from
(
    select o.customer_id, c.`name`,
        sum(case when o.order_date between '2020-06-01' and '2020-06-30' then p.price * o.quantity end) as JuneSpend,
        sum(case when o.order_date between '2020-07-01' and '2020-07-31' then p.price * o.quantity end) as JulySpend
    from Orders o
    left join Customers c on o.customer_id = c.customer_id
    left join Products p on o.product_id = p.product_id
    group by o.customer_id
    having JuneSpend >= 100 and JulySpend >= 100
) as final_table;