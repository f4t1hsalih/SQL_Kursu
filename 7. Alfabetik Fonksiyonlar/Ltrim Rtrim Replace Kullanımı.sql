--LTRIM KOMUTU
--Ltrim komutu ile soldaki bo�luk kalkt�
select LTRIM( '     Merhaba')

--RTRIM KOMUTU
--Rtrim komutu ile sa�daki bo�luk kalkt�
select RTRIM( 'Merhaba     ')

--REPLACE KOMUTU
--Replace komutu ile metindeki de�er de�i�tirildi
--1.parametre metin 
--2.parametre neyin de�i�ece�i 
--3.parametre ne ile de�i�ece�i
select REPLACE('Ali Kaya','Kaya','K.')
