use ineuron;

CREATE TABLE Product (
    product_id int PRIMARY KEY,
    product_name varchar(25),
    unit_price int
);

INSERT INTO Product (product_id, product_name, unit_price)
VALUES
    (1, 'S8', 1000),
    (2, 'G4', 800),
    (3, 'iPhone', 1400);

CREATE TABLE Sales (
    seller_id int,
    product_id int,
    buyer_id int,
    sale_date date,
    quantity int,
    price int
);

INSERT INTO Sales (seller_id, product_id, buyer_id, sale_date, quantity, price)
VALUES
    (1, 1, 1, '2019-01-21', 2, 2000),
    (1, 2, 2, '2019-02-17', 1, 800),
    (2, 2, 3, '2019-06-02', 1, 800),
    (3, 3, 4, '2019-05-13', 2, 2800);
    
#Q17.Write an SQL query that reports the products that were only sold in the first quarter of 2019. That is,
#   between 2019-01-01 and 2019-03-31 inclusive.

SELECT product_id, 
       product_name 
FROM   product 
WHERE  product_id NOT IN (SELECT product_id 
                          FROM   sales 
                          WHERE  sale_date NOT BETWEEN 
                                 '2019-01-01' AND '2019-03-31');
