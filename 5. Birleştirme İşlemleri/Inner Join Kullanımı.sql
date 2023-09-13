--INNER JOIN
--Ýnner join ile iki tablonun tamamýnda eþleþen deðerler getirilir
select * from tbl_notes
inner join tbl_students
on tbl_notes.std_id = tbl_students.std_id