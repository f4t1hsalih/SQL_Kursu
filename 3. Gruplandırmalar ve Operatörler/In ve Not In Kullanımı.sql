--IN KOMUTU
--Þehri Ýzmir Ankara veya Adana olan tüm öðrencileri getirir
select * from tbl_students where std_city in('Ýzmir', 'Ankara', 'Adana')

--70,75,80,85,90 deðerlerinden herhangi birini sýnav1 de alan öðrencinin tüm bilgilerini getirir
select * from tbl_notes where exam1 in(70, 75, 80, 85, 90)

--NOT IN KOMUTU
--70,75,80,85,90 deðerlerinden herhangi birini sýnav1 de almayan öðrencinin tüm bilgilerini getirir
select * from tbl_notes where exam1 not in(70, 75, 80, 85, 90)