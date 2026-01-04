drop database b3_s5;
create database b3_s5;
use b3_s5;
create table orders (
 order_id int primary key auto_increment,
 customer_id int not null,
 total_amount decimal(10,2) not null check (total_amount >= 0),
 order_date date not null,
 status enum ('pending','completed','cancelled') not null 
);
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES
(1, 3200000, '2024-09-01', 'completed'),
(2, 7500000, '2024-09-03', 'completed'),
(3, 1500000, '2024-09-05', 'pending'),
(1, 9800000, '2024-09-07', 'completed'),
(4, 4200000, '2024-09-10', 'cancelled'),
(5, 6100000, '2024-09-12', 'completed'),
(2, 2700000, '2024-09-14', 'pending'),
(3, 8900000, '2024-09-16', 'completed');
select * from orders where status = 'completed';
select * from orders where total_amount > 5000000;
select * from orders order by order_date DESC limit 5;
select * from orders where status ='completed' order by total_amount DESC;
