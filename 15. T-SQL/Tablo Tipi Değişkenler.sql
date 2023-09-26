--Tablo T�r� De�i�kenler

--Declare ile tablo tipinde bir de�i�ken olu�turuldu
declare @persons table
(
person_id int identity(1,1),
person_name varchar(20),
person_city varchar(15)
)

--Ki�ilere insert into ile iki ki�i eklendi
insert into @persons(person_name, person_city) values ('Ahmet', 'Ankara')
insert into @persons(person_name, person_city) values ('Mehmet', 'Ad�yaman')

--Ki�iler tablosu g�r�nt�lendi
select * from @persons

--�artl� bir �ekilde de getirilebilir
--�ehrinde 'y' harfi ge�em ki�iyi getirir
select * from @persons where person_city like '%y%'
