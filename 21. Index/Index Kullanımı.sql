--INDEX KULLANIMI

--tablo1 isminde yeni tablo olu�turulur
create table tbl_tablo1
(
id int identity(1,1),
name varchar(20)
)

--250000 sat�rl� bir tablo olu�turulur
declare @sayac int=1
while @sayac <= 250000
begin
insert tbl_tablo1
select 'Kitap' + CAST(@sayac as varchar(20))
set @sayac = @sayac + 1
end

select * from tbl_tablo1

--SET STATISTICS IO ON:
--Bu komut, sorgu s�ras�nda ger�ekle�en disk giri�/��k�� (I/O) 
--i�lemlerini g�steren istatistikleri etkinle�tirir. 
--Bu istatistikler, sorgunun �al��t�r�lmas� s�ras�nda 
--disk �zerinde ka� okuma ve yazma i�lemi ger�ekle�ti�ini g�sterir.


--SET STATISTICS TIME ON:
--Bu komut, sorgunun �al��t�r�lmas� s�resine ili�kin istatistikleri etkinle�tirir.
--Bu istatistikler, sorgunun ba�lama ve biti� zaman�n� g�sterir ve toplam 
--s�reyi milisaniye cinsinden raporlar.

set statistics io on
set statistics time on

select * from tbl_tablo1
select * from tbl_tablo1 where id = 20000

--Clustered index olu�turma ve istatistiklerine bakma
create clustered index tablokayitgetir on tbl_tablo1(id)

select * from tbl_tablo1 where id = 20000

