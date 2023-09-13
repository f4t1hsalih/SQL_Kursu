--Inner Join
--İnner join ile iki tablonun tamamında eşleşen değerler getirilir
select * from tbl_notes
inner join tbl_students
on tbl_notes.std_id = tbl_students.std_id