--3 Basamaklý bir sayýnýn birler onlar ve yüzler basamaklarýný toplayýp yazdýran t-sql kodu
declare @number int, @ones int, @tens int, @hundreds int, @total int
set @number=123
--Birler basamaðýný bulma
set @ones = @number % 10
--Onlar basamaðýný bulma
set @tens = (@number / 10) % 10
--Yüzler basamaðýný bulma
set @hundreds = @number / 100
--Basamak Deðerlerini Görme
select @ones as 'Birler', @tens as 'Onlar', @hundreds as 'Yüzler'
--Sonucu Hesaplatma
set @total = @ones + @tens + @hundreds
--Sonucu Yazdýrma
select @total as 'Sonuç'