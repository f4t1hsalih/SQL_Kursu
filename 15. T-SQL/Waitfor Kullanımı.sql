--WAITFOR KULLANIMI

--De�erleri getirmek i�in 5 saniye bekler
waitfor delay '00:00:5'
select * from tbl_products

--De�eri ekleyip getirmek i�in 5 saniye bekler
waitfor delay '00:00:05'
insert into tbl_categories (category_name) values ('Di�er')
select * from tbl_categories
