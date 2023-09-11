--BETWEEN KOMUTU
--Ortalamasý 74 ve 100 arasýnda olan öðrencilerin tüm bilgilerini getirir
select * from tbl_notes where average between 74 and 100

--A'dan O'ya kadar olan karakterlerle ismi baþlayan öðrencileri getirir
select * from tbl_students where std_name between 'A' and 'O'