--T-SQL KULLANIMI
--delcare deðiþken oluþturmak için kullanýlýr
--deðiþken isimleri '@' sembolü ile tanýmlanýr
--deðiþken isminden sonra deðiþkenin türü belirtilmeli

--Deðiken tanýmlama
declare @sayi int
--Deðiþkene deðer atama
--deðiþkene deðer atanýrken 'set' komutu kullanýlýr
set @sayi = 50
--Deðiþkeni çaðýrma
select @sayi as 'Sonuç'

--Varchar ile deðiþken oluþturma
declare @person varchar(20)
set   @person = 'Ahmet'
select @person

--Ýki sayý tanýmlama ve bu sayýlarý toplama
declare @sayi1 int, @sayi2 int, @total int
set @sayi1 = 20 set @sayi2=30 set @total = @sayi1 + @sayi2
select @total