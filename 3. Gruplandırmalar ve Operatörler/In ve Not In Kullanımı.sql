--IN KOMUTU
--�ehri �zmir Ankara veya Adana olan t�m ��rencileri getirir
select * from tbl_students where std_city in('�zmir', 'Ankara', 'Adana')

--70,75,80,85,90 de�erlerinden herhangi birini s�nav1 de alan ��rencinin t�m bilgilerini getirir
select * from tbl_notes where exam1 in(70, 75, 80, 85, 90)

--NOT IN KOMUTU
--70,75,80,85,90 de�erlerinden herhangi birini s�nav1 de almayan ��rencinin t�m bilgilerini getirir
select * from tbl_notes where exam1 not in(70, 75, 80, 85, 90)