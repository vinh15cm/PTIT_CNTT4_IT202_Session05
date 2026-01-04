drop database b2_s5;
create database b2_s5;
use b2_s5;
create table customers(
customer_id int primary key auto_increment,
full_name varchar(255) not null,
email varchar(255) NOT NULL UNIQUE,
city VARCHAR(255) NOT NULL,
status ENUM ('ACTIVE','INACTIVE') NOT NULL DEFAULT 'ACTIVE'
);
INSERT INTO customers (full_name, email, city, status) VALUES
('Nguyễn Văn An', 'an.nguyen@gmail.com', 'TP.HCM', 'active'),
('Trần Thị Bình', 'binh.tran@gmail.com', 'Hà Nội', 'active'),
('Lê Minh Châu', 'chau.le@gmail.com', 'TP.HCM', 'inactive'),
('Phạm Quốc Dũng', 'dung.pham@gmail.com', 'Hà Nội', 'active'),
('Vũ Thị Hạnh', 'hanh.vu@gmail.com', 'Đà Nẵng', 'active'),
('Hoàng Minh Khoa', 'khoa.hoang@gmail.com', 'Hà Nội', 'inactive');
select * from customers ;
select * from customers where city ="TP.HCM";
select * from customers where city ="TP.HCM";
SELECT *
FROM customers
WHERE status = 'active'
  AND city = 'Hà Nội';
select * from customers order by full_name ASC
