--LEN KOMUTU
--��rencilerin adlar�n� ve adlar�n�n ka� karekter oldu�unu yazar
select std_name, LEN(std_name) from tbl_students

--�smi 5 karekter uzunlu�undaki ��rencileri getirir
select * from tbl_students where len(std_name) = 5

--�smi ve soyisminin karekterleri toplam� 3 ila 8 karekter aras�nda ise getirir
select * from tbl_students where len(std_name + std_surname) between 3 and 8
