use QuanLySinhVien;
select * from Subject 
where Credit = (select max(Credit) from Subject);
select sub. * from Subject sub join Mark m on sub.SubID = m.SubID
where m.Mark = (select max(Mark) from Mark);
select s.StudentID, s.StudentName, avg (m.Mark) as AverageMark 
from Student s join Mark m on s.StudentID = m.StudentID 
group by s.StudentID, s.StudentName
order by AverageMark desc;
