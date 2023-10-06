--FUNCTION KULLANIMI

--Çaðýrýldýðý deðeri 25 arttýran fonsiyon
create function stokarttir(@adet int)
--fonsiyon oluþturulurken returns ile fonksiyonun geri dönüþ türü belirtilmelidir
returns int
as
begin
--return ile fonksiyonun geri dönüþ deðeri tanýmlanýr
return @adet + 25
end

--Fonksiyonun kullanýlýþý
select product_name, product_stock, dbo.stokarttir(product_stock) from tbl_products

--20 Karekterli bir isim deðeri alýp bu deðeri küçük harfe çevirir ve varchar türünde geri döndürür
create function kucukharf(@isim varchar(20))
returns varchar(20)
as
begin
return lower(@isim)
end

--kucukharf fonksiyonunun kullanýmý
select dbo.kucukharf(product_name), product_stock from tbl_products

