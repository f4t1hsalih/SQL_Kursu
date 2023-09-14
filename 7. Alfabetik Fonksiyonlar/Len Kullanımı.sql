--LEN KOMUTU
--Öðrencilerin adlarýný ve adlarýnýn kaç karekter olduðunu yazar
select std_name, LEN(std_name) from tbl_students

--Ýsmi 5 karekter uzunluðundaki öðrencileri getirir
select * from tbl_students where len(std_name) = 5

--Ýsmi ve soyisminin karekterleri toplamý 3 ila 8 karekter arasýnda ise getirir
select * from tbl_students where len(std_name + std_surname) between 3 and 8
