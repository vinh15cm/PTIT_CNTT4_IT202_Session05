drop database b4_s5;
create database b4_s5;
use b3_s5;
create table products (
product_id int primary key auto_increment,
product_name varchar(225) not null,
price decimal(10,2) not null check (price >= 0),
stock int not null check (stock >= 0),
sold_quantity int not null default 0 check (sold_quantity >= 0),
status enum ('active','inactive') not null default 'active'
);
INSERT INTO products (product_name, price, stock, sold_quantity, status) VALUES
('Laptop Dell Inspiron', 15000000, 10, 120, 'active'),
('iPhone 13', 18000000, 8, 200, 'active'),
('Tai nghe Bluetooth', 800000, 30, 350, 'active'),
('Chuột không dây', 350000, 50, 180, 'active'),
('Bàn phím cơ', 1800000, 20, 95, 'active'),
('Loa Bluetooth JBL', 2500000, 15, 160, 'active'),
('Ổ cứng SSD 512GB', 1900000, 25, 140, 'active'),
('USB 64GB', 250000, 100, 420, 'active'),
('Màn hình LG 24 inch', 4200000, 12, 110, 'active'),
('Webcam Full HD', 900000, 18, 130, 'inactive'),
('Router Wifi TP-Link', 1200000, 22, 155, 'active'),
('Sạc dự phòng', 600000, 40, 300, 'active'),
('Tai nghe Gaming', 1500000, 16, 170, 'active'),
('Balo Laptop', 700000, 28, 90, 'active'),
('Đế tản nhiệt Laptop', 450000, 35, 210, 'active');
select * from products order by sold_quantity desc limit 10;
select * from products order by sold_quantity limit 5 offset 10;
select * from products where price < 2000000 order by sold_quantity desc;