--FULL JOIN
--Her iki tabloyuda eþleþtirir ve tüm deðerleri getirir
select * from tbl_notes
full join tbl_students
on tbl_notes.std_id = tbl_students.std_id