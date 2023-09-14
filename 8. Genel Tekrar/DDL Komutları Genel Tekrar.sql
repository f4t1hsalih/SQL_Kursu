--Genel Tekrar

--Veritabaný oluþturur
create database krsDbSatis

--Veritabanýný seçer
use krsDbSatis

--Kategori tablosunu oluþturur
create table tbl_categories
(
category_id tinyint identity(1,1) primary key,
category_name varchar(50)
)

--Ürün tablosunu oluþturur
create table tbl_products
(
product_id int identity(1,1) primary key,
product_name varchar(50),
product_brand varchar(50),
category_id tinyint,
product_bprice decimal(18,2),
product_sprice decimal(18,2),
product_stock smallint check(product_stock > 0),
product_status bit default 1
)

--Personel tablosunu oluþturur
create table tbl_staff
(
staff_id smallint identity(1,1) primary key,
staff_name_surname varchar(50)
)

--Müþteri tablosunu oluþturur
create table tbl_customer
(
customer_id int identity(1,1) primary key,
customer_name varchar(50),
customer_surname varchar(50),
customer_city varchar(13),
customer_balance decimal(18,2)
)

--Hareket tablosunu oluþturur
create table tbl_movement
(
movement_id int identity(1,1) primary key,
product int,
customer int,
staff smallint,
piece int,
amount decimal(18,2),
date smalldatetime
)

--Ürün tablosunu sýfýrlar
truncate table tbl_products