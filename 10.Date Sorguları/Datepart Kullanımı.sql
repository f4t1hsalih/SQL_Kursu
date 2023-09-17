--DATEPART KOMUTU
--Ayýn 3'ü ila 5'i arasýnda ürün alan müþteriler
select * from tbl_movement where DATEPART(DAY,date) between 3 and 5

--Þehri Ankara olup ayýn 1'i ila 3'ü arasýnda alýþveriþ yapmýþ müþteriler
select * from tbl_movement where DATEPART(DAY,date) between 1 and 3 and customer_id=(select customer_id from tbl_customer where customer_city='Ankara')