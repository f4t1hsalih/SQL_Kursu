--IF ELSE KULLANIMI

--Eðer yirmi ondan küçükse ekrana Hello yaz
if(20>10)
print 'Hello'
--Deðil ise ekrana Merhaba yaz
else
print 'Merhaba'

--Stoktaki toplam ürün sayýsý 100 den büyük mü küçük mü olduðunu bulup buna göre ekrana yazý yazar
if (select sum(product_stock) from tbl_products) > 100
print 'Toplam ürün sayýsý 100 den büyüktür'
else
print 'Toplam ürün sayýsý 100 den küçüktür'

--Ürün çeþit sayýsýna göre ekrana mesa verir
if (select count(*) from tbl_products) > 20
print '20 den fazla çeþit ürün var'
else
print '20 den az çeþit ürün var'
