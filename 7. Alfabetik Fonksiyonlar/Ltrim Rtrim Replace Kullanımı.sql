--LTRIM KOMUTU
--Ltrim komutu ile soldaki boþluk kalktý
select LTRIM( '     Merhaba')

--RTRIM KOMUTU
--Rtrim komutu ile saðdaki boþluk kalktý
select RTRIM( 'Merhaba     ')

--REPLACE KOMUTU
--Replace komutu ile metindeki deðer deðiþtirildi
--1.parametre metin 
--2.parametre neyin deðiþeceði 
--3.parametre ne ile deðiþeceði
select REPLACE('Ali Kaya','Kaya','K.')
