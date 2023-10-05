--DEÐÝÞKENLÝ TRÝGGER KULLANIMI

--Yeni eklenen ürünün stok adetini deðiþkene atar ve bu deðiþkendeki deðeri toplam ürün adetine ekler
create trigger arttir
on tbl_products
after insert
as
declare @stoksayi int
--ekleme iþlemi yapýlýðýnda stoksayi isimli deðiþkene ürün stok deðerini atar
select @stoksayi = product_stock from inserted
update tbl_stock set total_product += @stoksayi

