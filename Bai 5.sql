drop database b5_s5;
create database b5_s5;
use b5_s5;
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL CHECK (total_amount >= 0),
    order_date DATE NOT NULL,
    status ENUM('pending', 'completed', 'cancelled') NOT NULL
);
INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES
(1, 3200000, '2024-09-01', 'completed'),
(2, 7500000, '2024-09-02', 'completed'),
(3, 1500000, '2024-09-03', 'pending'),
(4, 9800000, '2024-09-04', 'completed'),
(5, 4200000, '2024-09-05', 'pending'),
(1, 6100000, '2024-09-06', 'completed'),
(2, 2700000, '2024-09-07', 'pending'),
(3, 8900000, '2024-09-08', 'completed'),
(4, 5100000, '2024-09-09', 'completed'),
(5, 1900000, '2024-09-10', 'pending'),
(1, 7300000, '2024-09-11', 'completed'),
(2, 2600000, '2024-09-12', 'pending'),
(3, 8400000, '2024-09-13', 'completed'),
(4, 3000000, '2024-09-14', 'cancelled'),
(5, 6600000, '2024-09-15', 'completed'),
(1, 4100000, '2024-09-16', 'pending'),
(2, 9200000, '2024-09-17', 'completed'),
(3, 1800000, '2024-09-18', 'pending');


select * from orders where status != 'cancelled'
order by order_date desc
limit 5 offset 0;
select * from orders where status != 'cancelled' order by order_date desc
limit 5 offset 5;
select * from orders where status != 'cancelled' order by order_date desc limit 5 offset 10;
