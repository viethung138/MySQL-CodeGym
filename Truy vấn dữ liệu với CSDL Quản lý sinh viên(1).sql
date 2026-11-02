USE quanlysinhvien;

SELECT * FROM Student
WHERE StudentName LIKE 'h%';

SELECT * FROM Class
WHERE Month(StartDate) = 12;

SELECT * FROM Subject
WHERE Credit BETWEEN 3 AND 5;

SET SQL_SAFE_UPDATES = 0;

UPDATE Student
SET ClassID = 2
WHERE StudentName = 'Hung';

SET SQL_SAFE_UPDATES = 1;

SELECT S.StudentName, Sub.SubName, M.Mark
FROM Student S
INNER JOIN Mark M ON M.StudentID = S.StudentID
INNER JOIN Subject Sub ON Sub.SubID = M.SubID
ORDER BY M.Mark DESC, S.StudentName ASC;