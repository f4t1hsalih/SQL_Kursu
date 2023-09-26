--Merhaba yazdýrýr
print 'Merhaba'

--Ýki sayýnýn toplamýný ekrana yazdýran sql kodu
declare @n1 int, @n2 int, @result int
set @n1 = 5
set @n2 = 8
set @result = @n1 + @n2
print @result
--cast() tür dönüþümü yapmak için kullanýlýr
PRINT CAST(@n1 AS NVARCHAR(10)) + ' ile ' + CAST(@n2 AS NVARCHAR(10)) + ' sayýlarýnýn toplamý ' + CAST(@result AS NVARCHAR(10)) + ' sayýsýdýr.'
