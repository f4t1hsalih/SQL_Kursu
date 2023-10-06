--FUNCTION KULLANIMI

--Çaðýrýldýðý deðeri 25 arttýran fonsiyon
create function stokarttir(@adet int)
--fonsiyon oluþturulurken returns ile fonksiyonun geri dönüþ türü belirtilmelidir
returns int
as
begin
return @adet + 25
end

--Fonksiyonun kullanýlýþý
select product_name, product_stock, dbo.stokarttir(product_stock) from tbl_products

