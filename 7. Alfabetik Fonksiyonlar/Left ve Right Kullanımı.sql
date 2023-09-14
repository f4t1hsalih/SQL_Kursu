--LEFT KOMUTU
--Left komutu ile Merhaba dünya cümlesinin soldan 5 karekterini alýr
select LEFT('Merhaba Dünya', 5)

--RIGHT KOMUTU
--Right komutu ile Merhaba dünya cümlesinin saðdan 5 karekterini alýr
select RIGHT('Merhaba Dünya', 5)

--Öðrencinin Adýnýn baþ harfinin yanýna nokta koyup soyadý ile yazdýrma
select LEFT(std_name,1) + '.' + std_surname from tbl_students
