--FUNCTION KULLANIMI

--�a��r�ld��� de�eri 25 artt�ran fonsiyon
create function stokarttir(@adet int)
--fonsiyon olu�turulurken returns ile fonksiyonun geri d�n�� t�r� belirtilmelidir
returns int
as
begin
--return ile fonksiyonun geri d�n�� de�eri tan�mlan�r
return @adet + 25
end

--Fonksiyonun kullan�l���
select product_name, product_stock, dbo.stokarttir(product_stock) from tbl_products

--20 Karekterli bir isim de�eri al�p bu de�eri k���k harfe �evirir ve varchar t�r�nde geri d�nd�r�r
create function kucukharf(@isim varchar(20))
returns varchar(20)
as
begin
return lower(@isim)
end

--kucukharf fonksiyonunun kullan�m�
select dbo.kucukharf(product_name), product_stock from tbl_products

--Decimal t�r�nden de�er d�nd�ren ve kdv artt�r�m� yapan fonksiyon
create function KDV(@deger decimal(18,2))
returns decimal(18,2)
as
begin
--Gelen de�eri %20 artt�r�r
return @deger * 1.20
end

--Fonksiyonun �a�r�lmas�
select product_name, product_sprice, dbo.KDV(product_sprice) as 'KDV li Fiyat' from tbl_products

