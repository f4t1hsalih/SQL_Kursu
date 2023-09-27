--WAITFOR KULLANIMI

--Deðerleri getirmek için 5 saniye bekler
waitfor delay '00:00:5'
select * from tbl_products

--Deðeri ekleyip getirmek için 5 saniye bekler
waitfor delay '00:00:05'
insert into tbl_categories (category_name) values ('Diðer')
select * from tbl_categories
