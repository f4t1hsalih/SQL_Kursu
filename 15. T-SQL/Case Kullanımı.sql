--CASE KULLANIMI

--3 Yöntemlede yapýlabilir
--Ürünler tablosunda ürün durumu 1 olan ürünlere ürün var 0 olan ürünlere ise ürün yok yazmaya yarar
select product_name, product_brand,
case product_status
when '1' then 'Ürün var'
when '0' then 'Ürün yok'
end as 'Ürün Durum'
from tbl_products

select product_name, product_brand,
case 
when product_status = 1 then 'Ürün var'
when product_status = 0 then 'Ürün yok'
end as 'Ürün Durum'
from tbl_products

select product_name, product_brand,
case product_status
when 1 then 'Ürün var'
when 0 then 'Ürün yok'
end as 'Ürün Durum'
from tbl_products

--Ürün kategorilerini Case ile getirme
--Else ile diðer seçenekler yerine 'BÝLÝNMEYEN' yazdýrýldý
select product_name, product_brand,
case category_id
when 1 then 'LAPTOP'
when 2 then 'BEYAZ EÞYA'
when 3 then 'KÜÇÜK EV ALETLERÝ'
else 'BÝLÝNMEYEN'
end
from tbl_products

--Ürünlerin stok sayýlarýnýn aralýklarýna göre mesaj verme
select product_name, product_brand, product_stock,
case 
when product_stock >= 1 and product_stock <=5 then 'Kritik Seviye'
when product_stock >= 6 and product_stock <=10 then 'Takviye Yapýlmalý'
when product_stock > 10 then 'Stock Sayýsý Yeterli'
end
from tbl_products
