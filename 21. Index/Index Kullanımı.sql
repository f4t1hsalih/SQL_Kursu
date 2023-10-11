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

select * from tbl_tablo1

--SET STATISTICS IO ON:
--Bu komut, sorgu sýrasýnda gerçekleþen disk giriþ/çýkýþ (I/O) 
--iþlemlerini gösteren istatistikleri etkinleþtirir. 
--Bu istatistikler, sorgunun çalýþtýrýlmasý sýrasýnda 
--disk üzerinde kaç okuma ve yazma iþlemi gerçekleþtiðini gösterir.


--SET STATISTICS TIME ON:
--Bu komut, sorgunun çalýþtýrýlmasý süresine iliþkin istatistikleri etkinleþtirir.
--Bu istatistikler, sorgunun baþlama ve bitiþ zamanýný gösterir ve toplam 
--süreyi milisaniye cinsinden raporlar.

set statistics io on
set statistics time on

select * from tbl_tablo1
select * from tbl_tablo1 where id = 20000

--Clustered index oluþturma ve istatistiklerine bakma
create clustered index tablokayitgetir on tbl_tablo1(id)

select * from tbl_tablo1 where id = 20000

