use ineuron2;

CREATE TABLE Warehouse (
    `name` VARCHAR(25),
    product_id INT,
    units INT,
    PRIMARY KEY (`name`, product_id)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(25),
    Width INT,
    `Length` INT,
    Height INT
);

INSERT INTO Warehouse (`name`, product_id, units)
VALUES
    ('LCHouse1', 1, 1),
    ('LCHouse1', 2, 10),
    ('LCHouse1', 3, 5),
    ('LCHouse2', 1, 2),
    ('LCHouse2', 2, 2),
    ('LCHouse3', 4, 1);


INSERT INTO Products (product_id, product_name, Width, `Length`, Height)
VALUES
    (1, 'LC-TV', 5, 50, 40),
    (2, 'LC-KeyChain', 5, 5, 5),
    (3, 'LC-Phone', 2, 10, 10),
    (4, 'LC-T-Shirt', 4, 10, 20);
    
#Q41. Write an SQL query to report the number of cubic feet of volume the inventory occupies in each
#     warehouse.

select w.`name` as warehouse_name,
sum(p.width*p.`length`*p.height*w.units) as volume
from warehouse w, Products p
where w.product_id=p.product_id
group by w.`name`;




