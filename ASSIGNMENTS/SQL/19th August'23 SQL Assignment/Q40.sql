use ineuron;

CREATE TABLE Prices (
    product_id INT,
    start_date DATE,
    end_date DATE,
    price INT,
    PRIMARY KEY (product_id, start_date, end_date)
);

INSERT INTO Prices (product_id, start_date, end_date, price)
VALUES
    (1, '2019-02-17', '2019-02-28', 5),
    (1, '2019-03-01', '2019-03-22', 20),
    (2, '2019-02-01', '2019-02-20', 15),
    (2, '2019-02-21', '2019-03-31', 30);


CREATE TABLE UnitsSold (
    product_id INT,
    purchase_date DATE,
    units INT
);


INSERT INTO UnitsSold (product_id, purchase_date, units)
VALUES
    (1, '2019-02-25', 100),
    (1, '2019-03-01', 15),
    (2, '2019-02-10', 200),
    (2, '2019-03-22', 30);
    
#Q23.Write an SQL query to find the average selling price for each product. average_price should be
#    rounded to 2 decimal places.

select p.product_id, 
round(sum(p.price*us.units)/sum(us.units), 2) as average_price
from prices as p, unitsSold as us
where us.purchase_date between p.start_date and p.end_date
and p.product_id=us.product_id
group by p.product_id;
