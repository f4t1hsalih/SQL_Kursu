--IF ELSE KULLANIMI

--E�er yirmi ondan k���kse ekrana Hello yaz
if(20>10)
print 'Hello'
--De�il ise ekrana Merhaba yaz
else
print 'Merhaba'

--Stoktaki toplam �r�n say�s� 100 den b�y�k m� k���k m� oldu�unu bulup buna g�re ekrana yaz� yazar
if (select sum(product_stock) from tbl_products) > 100
print 'Toplam �r�n say�s� 100 den b�y�kt�r'
else
print 'Toplam �r�n say�s� 100 den k���kt�r'

--�r�n �e�it say�s�na g�re ekrana mesa verir
if (select count(*) from tbl_products) > 20
print '20 den fazla �e�it �r�n var'
else
print '20 den az �e�it �r�n var'
