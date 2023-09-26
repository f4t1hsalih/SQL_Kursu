--Tablo Türü Deðiþkenler

--Declare ile tablo tipinde bir deðiþken oluþturuldu
declare @persons table
(
person_id int identity(1,1),
person_name varchar(20),
person_city varchar(15)
)

--Kiþilere insert into ile iki kiþi eklendi
insert into @persons(person_name, person_city) values ('Ahmet', 'Ankara')
insert into @persons(person_name, person_city) values ('Mehmet', 'Adýyaman')

--Kiþiler tablosu görüntülendi
select * from @persons

--Þartlý bir þekilde de getirilebilir
--Þehrinde 'y' harfi geçem kiþiyi getirir
select * from @persons where person_city like '%y%'
