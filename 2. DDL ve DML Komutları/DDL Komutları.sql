--Tablo oluþturmak için kullanýlýr
CREATE TABLE tbl_lessons
(
lesson_id tinyint,
lesson_name varchar(20)
)

--Tablo'ya yeni Column eklemek için kullanýlýr
ALTER TABLE tbl_lessons
ADD quota smallint

--Tablo'dan bir Column silmek için kullanýlýr
ALTER TABLE tbl_lessons
drop column quota

--Tablo'yu tamamen silmek için kullanýlýr
DROP TABLE tbl_lessons

