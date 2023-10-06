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

--Decimal türünden deðer döndüren ve kdv arttýrýmý yapan fonksiyon
create function KDV(@deger decimal(18,2))
returns decimal(18,2)
as
begin
--Gelen deðeri %20 arttýrýr
return @deger * 1.20
end

--Fonksiyonun çaðrýlmasý
select product_name, product_sprice, dbo.KDV(product_sprice) as 'KDV li Fiyat' from tbl_products

--Tablo bazlý ddeðer döndüren fonksiyonllar

--Girilen ürün id ye ait bilgileri tablo olarak geriye döndüren fonksiyon
--Tablo geriye döndüren fonksiyon kullanýlýrken -begin end- bloklarý kullanýlmaz
create function urunbilgi(@id int)
--Tablo türünde deðer geriye döndürür
returns table
as
return select * from tbl_products where product_id = @id

--Fonksiyonun kullanýmý
select * from dbo.urunbilgi(4)

