create database QuanLySinhVien1;
use QuanLySinhVien1;
create table Classes(
	ClassID int(4) auto_increment primary key,
    ClassName nvarchar(50)
    );
create table Subjects(
	SubjectID int(4) auto_increment primary key,
    SubjectName nvarchar(50)
    );
create table Students(
	StudentID int(4) auto_increment primary key,
    StudentName varchar(50),
    Age int(4),
    Email varchar(100) unique 
    );
create table ClassStudent( 
	ClassID int(4),
    Student int(4)
);
create table Marks(
	Mark int(4),
    SubjectID int(4),
    StudentID int(4)
    );
    
