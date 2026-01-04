create database b6_s5;
use b6_s5;
create table products (
product_id int primary key auto_increment,
product_name varchar(225) not null,
price decimal(10,2) not null check (price >= 0),
stock int not null check (stock >= 0),
status enum ('active','inactive') not null default 'active'
);
INSERT INTO products (product_name, price, stock, status) VALUES
('Bàn phím cơ', 1800000, 30, 'active'),
('Chuột gaming', 1200000, 40, 'active'),
('Tai nghe gaming', 1500000, 25, 'active'),
('SSD 256GB', 1100000, 50, 'active'),
('SSD 512GB', 1900000, 35, 'active'),
('RAM 8GB', 1300000, 45, 'active'),
('RAM 16GB', 2700000, 20, 'active'),
('Loa Bluetooth', 2500000, 15, 'active'),
('Webcam Full HD', 1600000, 18, 'active'),
('Router Wifi', 1400000, 22, 'active'),
('Màn hình 24 inch', 3000000, 10, 'active'),
('Card mạng', 1050000, 60, 'active'),
('USB 128GB', 900000, 100, 'active'),
('Sạc dự phòng', 600000, 80, 'active'),
('Balo laptop', 700000, 50, 'inactive'),
('Ổ cứng HDD 1TB', 2200000, 12, 'active'),
('Đế tản nhiệt', 450000, 70, 'active'),
('Switch mạng', 2800000, 8, 'active'),
('Micro USB', 1250000, 14, 'inactive'),
('Máy in mini', 2900000, 6, 'active'),
('Tai nghe bluetooth', 1000000, 40, 'active'),
('Bộ phát wifi 4G', 2400000, 16, 'active');
select * from products where status ='active' AND price BETWEEN 1000000 AND 3000000 order by price ASC limit 10 offset 0;
SELECT *
FROM products
WHERE status = 'active'
  AND price BETWEEN 1000000 AND 3000000
ORDER BY price ASC
LIMIT 10 OFFSET 10;

