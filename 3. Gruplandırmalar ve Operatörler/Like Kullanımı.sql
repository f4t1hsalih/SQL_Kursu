--LÝKE KOMUTU
--Ýsminde a geçen bütün öðrencileri getirir
select * from tbl_students where std_name like '%a%'

--Ýsmi a ile baþlayan öðrencileri getirir
select * from tbl_students where std_name like 'a%'

--Ýçerisinde a harfi geçirmeyen kulüpleri getirir
select * from tbl_students where std_club not like '%a%'

--Ýçerisinde an geçecek fakat devamý farklý olacak þehirleri getirir
select * from tbl_students where std_city like '%ir_%'

--Ýsmi a ya da b ile baþlayan öðrencileri getirir
select * from tbl_students where std_name like '[A,B]%'

--Ýsminde a ya da b geçen öðrencileri getirir
select * from tbl_students where std_name like '%[A,B]%'

--Ýsminin son harfi n ya da ý olan öðrencileri getirir
select * from tbl_students where std_name like '%[N,I]'

--Clübün adý a ile h arasýndaki harflerden baþlýyor ise o kulüpleri getirir
select * from tbl_students where std_club like '[a-h]%'