--UPPER KOMUTU
--Upper komutu ile mesaj� b�y�k harflerle yazd�r�r
select UPPER('merhaba') as 'B�y� Harf'

--��rencilerin adlar�n� b�y�k harfe �evirir
select UPPER(std_name) as '��renci Ad�' from tbl_students

--LOWER KOMUTU
--Lower komutu ile ��rencilerin ad�n� k���k harf ile yazar
select LOWER(std_name) as '��renci Ad�' from tbl_students

--�dev
--�ehri Adana ve Kul�b� Bili�im olan ��rencinin ad�n� b�y�k soyad�n� k���k harfle getir
select upper(std_name) as '��renci Ad�', LOWER(std_surname) from tbl_students
where std_city='Adana' and std_club=(select club_id from tbl_club where club_name='Bili�im')