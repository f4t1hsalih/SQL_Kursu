--LÝKE KOMUTU
--Ýsminde a geçen bütün öðrencileri getirir
select * from tbl_students where std_name like '%a%'

--Ýsmi a ile baþlayan öðrencileri getirir
select * from tbl_students where std_name like 'a%'

--Ýçerisinde a harfi geçirmeyen kulüpleri getirir
select * from tbl_students where std_club not like '%a%'
