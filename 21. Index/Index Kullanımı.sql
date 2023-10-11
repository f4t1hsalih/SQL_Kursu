--INDEX KULLANIMI

--tablo1 isminde yeni tablo oluþturulur
create table tbl_tablo1
(
id int identity(1,1),
name varchar(20)
)

--250000 satýrlý bir tablo oluþturulur
declare @sayac int=1
while @sayac <= 250000
begin
insert tbl_tablo1
select 'Kitap' + CAST(@sayac as varchar(20))
set @sayac = @sayac + 1
end
