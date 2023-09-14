--SUBSTRING KOMUTU
--Substring komutu ile öðrenci adýnýn 1. karekterinden itibaren 2 karekter alarak yazar
select SUBSTRING(std_name,1,2) from tbl_students

--Substring ile ad kýsaltmasý ve soyad kullanýmý
select SUBSTRING(std_name,1,1) + '.' + std_surname as 'Ad Soyad' from tbl_students