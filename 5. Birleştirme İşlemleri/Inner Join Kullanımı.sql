--Inner Join
--�nner join ile iki tablonun tamam�nda e�le�en de�erler getirilir
select * from tbl_notes
inner join tbl_students
on tbl_notes.std_id = tbl_students.std_id