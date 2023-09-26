--CASE KULLANIMI

--3 Y�ntemlede yap�labilir
--�r�nler tablosunda �r�n durumu 1 olan �r�nlere �r�n var 0 olan �r�nlere ise �r�n yok yazmaya yarar
select product_name, product_brand,
case product_status
when '1' then '�r�n var'
when '0' then '�r�n yok'
end as '�r�n Durum'
from tbl_products

select product_name, product_brand,
case 
when product_status = 1 then '�r�n var'
when product_status = 0 then '�r�n yok'
end as '�r�n Durum'
from tbl_products

select product_name, product_brand,
case product_status
when 1 then '�r�n var'
when 0 then '�r�n yok'
end as '�r�n Durum'
from tbl_products

--�r�n kategorilerini Case ile getirme
--Else ile di�er se�enekler yerine 'B�L�NMEYEN' yazd�r�ld�
select product_name, product_brand,
case category_id
when 1 then 'LAPTOP'
when 2 then 'BEYAZ E�YA'
when 3 then 'K���K EV ALETLER�'
else 'B�L�NMEYEN'
end
from tbl_products

--�r�nlerin stok say�lar�n�n aral�klar�na g�re mesaj verme
select product_name, product_brand, product_stock,
case 
when product_stock >= 1 and product_stock <=5 then 'Kritik Seviye'
when product_stock >= 6 and product_stock <=10 then 'Takviye Yap�lmal�'
when product_stock > 10 then 'Stock Say�s� Yeterli'
end
from tbl_products
