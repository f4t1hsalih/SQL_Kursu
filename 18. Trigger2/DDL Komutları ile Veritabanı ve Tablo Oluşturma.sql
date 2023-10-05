create database krsDbYeni

use krsDbYeni

CREATE TABLE tbl_customer(
	customer_id int IDENTITY(1,1),
	customer_name varchar(20),
	customer_surname varchar(20),
	customer_city varchar(15),
	customer_balance decimal(18, 2)
	)

CREATE TABLE tbl_categories(
	category_id int primary key IDENTITY(1,1),
	category_name varchar(20)
	)

CREATE TABLE tbl_products(
	product_id int primary key IDENTITY(1,1),
	product_name varchar(20),
	product_bprice decimal(18, 2),
    product_sprice decimal(18, 2),
	product_stock smallint,
	product_status bit,
	category_id tinyint
	)

CREATE TABLE tbl_sales(
	sale_id int primary key IDENTITY(1,1),
	customer_id int,
	product_id int,
    date date
	)

