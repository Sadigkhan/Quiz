create database Academy

use Academy



create table [Groups](
Id int primary key identity,
Name nvarchar(50) not null)

create table Students(
Id int primary key identity,
Name nvarchar(50)not null,
Surname nvarchar(50) not null,
GroupId int references Groups(Id)
)

Alter table Students
Add  Grade int


insert into Groups(Name)
values('P221'),('P124'),('P224')

insert into Students(Name,Surname,GroupId,Grade)
values('Sadiqxan','Qayxanov',2,95),
('Sexavet','Eliyev',3,95),
('Metin','Agayev',3,95),
('Mesud','Mirzezade',3,95)



select Groups.Name 'Groups', Students.Name 'Students' from Groups
join Students
on Groups.Id=Students.GroupId






