use ineuron1;

CREATE TABLE Product (
    product_key INT PRIMARY KEY
);

INSERT INTO Product (product_key)
VALUES
    (5),
    (6);

CREATE TABLE Customer (
    customer_id INT,
    product_key INT,
    FOREIGN KEY (product_key) REFERENCES Product (product_key)
);

INSERT INTO Customer (customer_id, product_key)
VALUES
    (1, 5),
    (2, 6),
    (3, 5),
    (3, 6),
    (1, 6);
    
#Q46.Write an SQL query to report the customer ids from the Customer table that bought all the products in
#    the Product table.

SELECT customer_id
FROM Customer
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(product_key) FROM Product);

