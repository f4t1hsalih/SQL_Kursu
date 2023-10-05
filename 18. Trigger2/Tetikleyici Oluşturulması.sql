--Stokdaki toplam ürün sayýsýný günceller
update tbl_stock set total_product=(select count(*) from tbl_products)

--Ürün sayýsý arttýkça otomatik olarak artan bir trigger oluþturuldu
create trigger Arttir
on tbl_products
after insert
as
update tbl_stock set total_product+=1

--Trigger'ý silme iþlemi
drop trigger arttir

--Stokdaki toplam ürün sayýsýný ürün stoðu adeti ile günceller
update tbl_stock set total_product=(select sum(product_stock) from tbl_products)

