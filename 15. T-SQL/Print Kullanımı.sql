--Merhaba yazd�r�r
print 'Merhaba'

--�ki say�n�n toplam�n� ekrana yazd�ran sql kodu
declare @n1 int, @n2 int, @result int
set @n1 = 5
set @n2 = 8
set @result = @n1 + @n2
print @result
--cast() t�r d�n���m� yapmak i�in kullan�l�r
PRINT CAST(@n1 AS NVARCHAR(10)) + ' ile ' + CAST(@n2 AS NVARCHAR(10)) + ' say�lar�n�n toplam� ' + CAST(@result AS NVARCHAR(10)) + ' say�s�d�r.'
