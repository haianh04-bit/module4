use QuanLySinhVien;
select * from Student
where StudentName like 'h%';
select * from Class
where month(StartDate) = 12;
select * from Subject
where Credit between 3 and 5;
update Student
set ClassID = 2
where StudentID = 1;
select S.StudentName, Sub.SubName, M.Mark
from Mark M
join Student S on M.StudentID = S.StudentID
join Subject Sub on M.SubID = Sub.SubID
order by M.Mark desc, S.StudentName asc;