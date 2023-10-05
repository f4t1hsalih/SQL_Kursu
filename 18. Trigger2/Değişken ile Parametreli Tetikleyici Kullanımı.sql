--DEÐÝÞKENLÝ TRÝGGER KULLANIMI

--Yeni eklenen ürünün stok adetini deðiþkene atar ve bu deðiþkendeki deðeri toplam ürün adetine ekler
create trigger arttir
on tbl_products
after insert
as
declare @stoksayi int
--Ekleme iþlemi yapýlýðýnda stoksayi isimli deðiþkene ürün stok deðerini atar
select @stoksayi = product_stock from inserted
update tbl_stock set total_product += @stoksayi


--Bir ürün silindiði zaman ürün stok adetini toplam stokdan düþer
create trigger azalt
on tbl_products
after delete
as
declare @stoksayi int
--Silme iþlemi yapýlýðýnda stoksayi isimli deðiþkene ürün stok deðerini atar
select @stoksayi = product_stock from deleted
update tbl_stock set total_product -= @stoksayi

--Kod ile ürün ekleme
insert into tbl_products (product_name, product_stock) values ('Mixer', 80)

