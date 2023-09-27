--WHILE KULLANIMI

--While kullanarak ekrana 5 defa Merhaba yazdırır
--Declare ile değişken tanımlanır
declare @counter int
--Set ile değişkene ilk değer verilir
set @counter = 1
--While ile şart yazılır
while @counter <= 5
--Begin ile şartın başlangıç yeri belirtilir
begin
--Kodlar begin ve end komutlarının arasına yazılır
print 'Merhaba'
set @counter += 1
--End ile While döngüsünün sonu belirtilir
end

--1'den 10'a kadar tüm rakaları ekrana yazdırır
declare @counter int
set @counter = 1
while @counter <= 10
begin
print @counter
set @counter += 1
end

--1'den 10'a kadar tüm rakaları toplayıp sonucu ekrana yazdırır
declare @counter int, @total int
set @counter = 1
set @total = 0
while (@counter <= 10)
begin
set @total = @total + @counter
set @counter += 1
end
print '1 den 10 a kadar tüm rakaların toplamı'
print @total

--Beyaz Eşya kategorisindeki ürünlerin ortalama karı 4500₺ nin altında olduğu sürece satış fiyatını %5 artırır
while (select avg (product_sprice - product_bprice) from tbl_products where category_id=2) < 4500
begin
update tbl_products set product_sprice += product_sprice * 5 / 100 where category_id = 2
end
select * from tbl_products
