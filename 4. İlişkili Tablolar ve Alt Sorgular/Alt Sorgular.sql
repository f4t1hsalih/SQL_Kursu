--ALT SORGULAR (SUB QUERY)
--Dersler tablosunda ismi matematik olan derse ait sýnav not bilgisini getirir
select * from tbl_notes where lesson_id=(select lesson_id from tbl_lessons where lesson_name='Matematik')

--Ödev Sorusu
select max(exam1) from tbl_notes where lesson_id=(select lesson_id from tbl_lessons where lesson_name='Algoritma')