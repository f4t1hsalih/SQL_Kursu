--LEFT KOMUTU
--Left komutu ile Merhaba d�nya c�mlesinin soldan 5 karekterini al�r
select LEFT('Merhaba D�nya', 5)

--RIGHT KOMUTU
--Right komutu ile Merhaba d�nya c�mlesinin sa�dan 5 karekterini al�r
select RIGHT('Merhaba D�nya', 5)

--��rencinin Ad�n�n ba� harfinin yan�na nokta koyup soyad� ile yazd�rma
select LEFT(std_name,1) + '.' + std_surname from tbl_students
