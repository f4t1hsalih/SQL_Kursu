--BETWEEN KOMUTU
--Ortalamas� 74 ve 100 aras�nda olan ��rencilerin t�m bilgilerini getirir
select * from tbl_notes where average between 74 and 100

--A'dan O'ya kadar olan karakterlerle ismi ba�layan ��rencileri getirir
select * from tbl_students where std_name between 'A' and 'O'