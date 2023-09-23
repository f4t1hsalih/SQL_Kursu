 --VİEW KULLANIMI
 --Test 1 isminde bir view oluştruldu
CREATE VIEW test1
AS
select * FROM tbl_categories

--View çalıştırılır
select * from test1

--View'a güncelleme yapmak için alter kullanılır
alter view test1
as
select * from tbl_categories where category_id<4

