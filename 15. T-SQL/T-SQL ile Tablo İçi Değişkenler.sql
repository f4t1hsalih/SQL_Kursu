--M��teriler tablosundaki m��teri bakiyesi en y�ksek olan� de�i�kene atay�p de�i�keni �a��rma
Declare @balance int
set @balance = (select max(customer_balance) from tbl_customer)
select @balance

--stock de�i�kenine en fazla sto�u olan �r�n�n stock adetini atar
declare @stock int
--stock de�i�kenine ataman�n ba�ka bir y�ntemi
select @stock = max(product_stock) from tbl_products
--stock de�i�kenini g�r�nt�ler
select @stock
--�r�nstok de�eri stock de�i�keninden gelen de�ere e�ik olan �r�n� getirir
select * from tbl_products where product_stock = @stock
