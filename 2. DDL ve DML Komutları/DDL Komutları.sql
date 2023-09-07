--Tablo olu�turmak i�in kullan�l�r
CREATE TABLE tbl_lessons
(
lesson_id tinyint,
lesson_name varchar(20)
)

--Tablo'ya yeni Column eklemek i�in kullan�l�r
ALTER TABLE tbl_lessons
ADD quota smallint

--Tablo'dan bir Column silmek i�in kullan�l�r
ALTER TABLE tbl_lessons
drop column quota

--Tablo'yu tamamen silmek i�in kullan�l�r
DROP TABLE tbl_lessons

