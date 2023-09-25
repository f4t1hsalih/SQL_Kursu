--T-SQL KULLANIMI
--delcare de�i�ken olu�turmak i�in kullan�l�r
--de�i�ken isimleri '@' sembol� ile tan�mlan�r
--de�i�ken isminden sonra de�i�kenin t�r� belirtilmeli

--De�iken tan�mlama
declare @sayi int
--De�i�kene de�er atama
--de�i�kene de�er atan�rken 'set' komutu kullan�l�r
set @sayi = 50
--De�i�keni �a��rma
select @sayi as 'Sonu�'

--Varchar ile de�i�ken olu�turma
declare @person varchar(20)
set   @person = 'Ahmet'
select @person

--�ki say� tan�mlama ve bu say�lar� toplama
declare @sayi1 int, @sayi2 int, @total int
set @sayi1 = 20 set @sayi2=30 set @total = @sayi1 + @sayi2
select @total