--L�KE KOMUTU
--�sminde a ge�en b�t�n ��rencileri getirir
select * from tbl_students where std_name like '%a%'

--�smi a ile ba�layan ��rencileri getirir
select * from tbl_students where std_name like 'a%'

--��erisinde a harfi ge�irmeyen kul�pleri getirir
select * from tbl_students where std_club not like '%a%'

--��erisinde an ge�ecek fakat devam� farkl� olacak �ehirleri getirir
select * from tbl_students where std_city like '%ir_%'

--�smi a ya da b ile ba�layan ��rencileri getirir
select * from tbl_students where std_name like '[A,B]%'

--�sminde a ya da b ge�en ��rencileri getirir
select * from tbl_students where std_name like '%[A,B]%'

--�sminin son harfi n ya da � olan ��rencileri getirir
select * from tbl_students where std_name like '%[N,I]'

--Cl�b�n ad� a ile h aras�ndaki harflerden ba�l�yor ise o kul�pleri getirir
select * from tbl_students where std_club like '[a-h]%'