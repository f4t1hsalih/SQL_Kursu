--TRANSACTÝON KULLANIMI

--Transaction: Ýþlemlerde hatalý durumlar oluþtuðunda iþlemleri yapmamýþ gibi baþa almaya yarar.

--2 tane ürünü kategoriler tablosuna ekler ve daha sonra rollback'i görünce kayýtlarý tekrar çýkarýr
begin transaction
insert into tbl_categories (category_name) values ('TV')
insert into tbl_categories (category_name) values ('Halý')
select * from tbl_categories
rollback

