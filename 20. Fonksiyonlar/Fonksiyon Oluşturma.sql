--FUNCTION KULLANIMI

--�a��r�ld��� de�eri 25 artt�ran fonsiyon
create function stokarttir(@adet int)
--fonsiyon olu�turulurken returns ile fonksiyonun geri d�n�� t�r� belirtilmelidir
returns int
as
begin
return @adet + 25
end

--Fonksiyonun kullan�l���
select product_name, product_stock, dbo.stokarttir(product_stock) from tbl_products

