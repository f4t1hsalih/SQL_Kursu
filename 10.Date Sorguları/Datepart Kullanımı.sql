--DATEPART KOMUTU
--Ay�n 3'� ila 5'i aras�nda �r�n alan m��teriler
select * from tbl_movement where DATEPART(DAY,date) between 3 and 5

--�ehri Ankara olup ay�n 1'i ila 3'� aras�nda al��veri� yapm�� m��teriler
select * from tbl_movement where DATEPART(DAY,date) between 1 and 3 and customer_id=(select customer_id from tbl_customer where customer_city='Ankara')