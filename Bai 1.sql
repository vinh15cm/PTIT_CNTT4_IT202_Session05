drop database b4_s5;
create database b4_s5;
use b4_s5;
create table Product(
product_id int primary key auto_increment,
product_name varchar(225) not null,
price decimal(10,2) not null check (price >= 0),
stock int not null check (stock >=0),
status ENUM ('active','inactive') not null default 'active'
);
insert into Product (product_name, price , stock , status) VALUES
('Laptop Dell Inspiron',15000000,10,'active'),
('iPhone 13',18000000,5,'active'),
('Tai nghe Bluetooth',800000,20,'active'),
('Chuot khong day',300000,50,'inactive'),
('Ban phim co',1200000,15,'active');
SELECT * FROM Product;

SELECT * 
FROM Product
WHERE status = 'active';

SELECT * FROM Product where price > 1000000;

SELECT * FROM Product where status = 'active' order by price ASC;





