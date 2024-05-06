create database SchoolManagmentSystem;

USE SchoolManagmentSystem;

create table class (

clasID int primary key IDENTITY (1,1) not null,
clasName varchar (50) null

)

create table Subject(
Subjectid  int primary key IDENTITY (1,1) not null,
  classid int foreign key references class (clasid) null,
subjectName varchar(50) null


)
-- جدول  الطلبة 
create table Student (

Studentid int primary key IDENTITY (1,1) not null,
Name varchar (50) null,

DOB date null,
Mobile bigint null,
Rollno varchar (50) null,
Address varchar(MAX)null,
classid int foreign key references class (clasid) null,
)
 -- جدول  المعلمين 
Create Table Teacher (

Teacherid int primary key IDENTITY (1,1) not null,

Name varchar (50) null,
Gender varchar (50)null,
DOB date null,
Mobile bigint null,
Email varchar (50) null,
Address varchar(MAX)null,
Passwored varchar(20)null


)
create table TeacherSubject(
ID  int primary key IDENTITY (1,1) not null,
 classid int foreign key references class (clasid) null,
 Subjectid int foreign key references  Subject (Subjectid) null,
 TeacherId int foreign key references  Teacher (Teacherid) null,

)
 -- حضور  المعلمين 
create table TeacherAttendance(

ID  int primary key IDENTITY (1,1) not null,
 
 Teacherid int foreign key references  Teacher ( Teacherid) null,
 date date null,
 status varchar (50) null ,

)
-- حضور الطلبة 

create table StudentAttendance(

ID  int primary key IDENTITY (1,1) not null,
 
 Teacherid int foreign key references  Teacher ( Teacherid) null,
  classid int foreign key references class (clasid) null,
 Subjectid int foreign key references  Subject (Subjectid) null,
 Rollno varchar (20)null,    --رقم التسجيل او رقم طالب 
 data date null,
 status varchar (50) null ,
)  

create table Fees (
feesid int  primary key identity (1,1)not null,
 classid int foreign key references class (clasid) null,
feesAmount int null,

)
Create table EXam (

EXamid int  primary key identity (1,1)not null,
 classid int foreign key references class (clasid) null,
  Subjectid int foreign key references  Subject (Subjectid) null,
RollNO VARChar(20)null,
TotalMarks int null,
outoFMarks int null,


)create table EXpense(

EXpenseID int  primary key identity (1,1)not null,
classid int foreign key references clasS (clasid) null,
  Subjectid int foreign key references  Subject (Subjectid) null,
  chavgeAmount int null,
)





