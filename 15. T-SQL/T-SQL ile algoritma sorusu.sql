--3 Basamakl� bir say�n�n birler onlar ve y�zler basamaklar�n� toplay�p yazd�ran t-sql kodu
declare @number int, @ones int, @tens int, @hundreds int, @total int
set @number=123
--Birler basama��n� bulma
set @ones = @number % 10
--Onlar basama��n� bulma
set @tens = (@number / 10) % 10
--Y�zler basama��n� bulma
set @hundreds = @number / 100
--Basamak De�erlerini G�rme
select @ones as 'Birler', @tens as 'Onlar', @hundreds as 'Y�zler'
--Sonucu Hesaplatma
set @total = @ones + @tens + @hundreds
--Sonucu Yazd�rma
select @total as 'Sonu�'