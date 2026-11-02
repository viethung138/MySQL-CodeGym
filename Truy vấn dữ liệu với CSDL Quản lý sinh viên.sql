USE quanlysinhvien;

SELECT * FROM Student;

SELECT * FROM Student 
WHERE Status = 1;

SELECT * FROM Subject
WHERE Credit < 10;

SELECT S.StudentID, S.StudentName, C.ClassName
FROM Student S JOIN Class C ON S.ClassID = C.ClassID
WHERE C.ClassName = 'A1';

SELECT S.StudentID, S.StudentName, Sub.SubName, M.Mark
FROM Student S
INNER JOIN Mark M ON S.StudentID = M.StudentID
INNER JOIN Subject Sub ON Sub.SubID = M.SubID
WHERE Sub.SubName = 'CF';