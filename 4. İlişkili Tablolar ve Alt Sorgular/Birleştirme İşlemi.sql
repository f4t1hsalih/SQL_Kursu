--B�RLE�T�RME ��LEM�
--��rencinin t�m not bilgilerini �eker fakat isimi ve ders ad�n� inner join ile de�i�tirir
select note_id, std_name + ' ' + std_surname as 'Ad Soyad', lesson_name, exam1, exam2, exam3, average, situation
from tbl_notes 
inner join tbl_lessons 
on tbl_notes.lesson_id = tbl_lessons.lesson_id
inner join tbl_students
on tbl_notes.std_id=tbl_students.std_id

--Chat GPT
--��rencinin t�m not bilgilerini �eker fakat isimi ve ders ad�n� inner join ile de�i�tirir, durum da ise 1 ise ge�ti 0 ise kald� yazar
SELECT
    note_id,
    std_name + ' ' + std_surname AS 'Ad Soyad',
    lesson_name,
    exam1,
    exam2,
    exam3,
    average,
    CASE
        WHEN situation = 1 THEN 'Ge�ti'
        WHEN situation = 0 THEN 'Kald�'
        ELSE 'Bilinmeyen'
    END AS 'Durum'
FROM tbl_notes
INNER JOIN tbl_lessons ON tbl_notes.lesson_id = tbl_lessons.lesson_id
INNER JOIN tbl_students ON tbl_notes.std_id = tbl_students.std_id;
