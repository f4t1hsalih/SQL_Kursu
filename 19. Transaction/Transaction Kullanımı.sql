--TRANSACTÝON KULLANIMI

--Transaction: Ýþlemlerde hatalý durumlar oluþtuðunda iþlemleri yapmamýþ gibi baþa almaya yarar.

--2 tane ürünü kategoriler tablosuna ekler ve daha sonra rollback'i görünce kayýtlarý tekrar çýkarýr
begin transaction
insert into tbl_categories (category_name) values ('TV')
insert into tbl_categories (category_name) values ('Halý')
select * from tbl_categories
rollback

--Commitin üstünde bulunan iþlemlerin tamamý olumlu bir þekilde yapýlýrsa iþlemler rollback olmadan kaydedilir
begin transaction
insert into tbl_products(product_name, product_stock) values ('ÜRÜN1', 25)
insert into tbl_products(product_name, product_stock) values ('ÜRÜN2', 40)
select * from tbl_products
commit

--Ýþlemlerden biri hata verdiðinden kayýtlarýn hiçbiri gerçekleþtirilmez
begin transaction
insert into tbl_products(product_name, product_stock) values ('ÜRÜN3', 10)
insert into tbl_products(product_name, product_stock) values ('ÜRÜN4', 'A')
select * from tbl_products
commit