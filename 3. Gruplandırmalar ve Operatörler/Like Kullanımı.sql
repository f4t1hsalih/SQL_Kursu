--L�KE KOMUTU
--�sminde a ge�en b�t�n ��rencileri getirir
select * from tbl_students where std_name like '%a%'

--�smi a ile ba�layan ��rencileri getirir
select * from tbl_students where std_name like 'a%'

--��erisinde a harfi ge�irmeyen kul�pleri getirir
select * from tbl_students where std_club not like '%a%'
