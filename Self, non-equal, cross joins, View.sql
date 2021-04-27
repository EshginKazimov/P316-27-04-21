--use P316DB

--Create Table Positions(
--	Id int primary key identity,
--	Name nvarchar(100),
--	Dependency int
--)

--SELF JOIN
--SELECT p1.Name, p2.Name 'Dependency' FROM Positions p1
--JOIN Positions p2
--ON
--p1.Dependency=p2.Id

--NON-EQUAL JOIN

--CREATE TABLE Students(
--	Id int primary key identity,
--	Name nvarchar(100),
--	Surname nvarchar(100),
--	Email nvarchar(100),
--	Mark int
--)

--CREATE TABLE Marks(
--	Id int primary key identity,
--	Letter char,
--	Min int,
--	Max int
--)

--NON-EQUAL JOIN
--SELECT Name + ' ' + Surname 'FullName', Email, Mark, Letter
--FROM Students s
--JOIN Marks m
--ON
--s.Mark BETWEEN m.Min AND m.MAX

--CROSS JOIN
--CREATE TABLE Products(
--	Id int primary key identity,
--	Name nvarchar(100),
--	Price decimal(10,2)
--)

--CREATE TABLE Sizes(
--	Id int primary key identity,
--	Size nvarchar(10)
--)

--SELECT Name, Price, Size FROM Products
--CROSS JOIN Sizes

--VIEW

--CREATE TABLE Groups(
--	Id int primary key identity,
--	Name nvarchar(20),
--	Subject nvarchar(50)
--)

--CREATE TABLE GroupsStudents(
--	Id int primary key identity,
--	StudentId int references Students(Id),
--	GroupId int references Groups(Id)
--)

--CREATE VIEW v_GetStudentsDetails 
--AS
--SELECT s.Name, Surname, Email, Mark, g.Name 'GroupName', Subject, Letter
--FROM Students s

--JOIN GroupsStudents gs
--ON s.Id=gs.StudentId

--JOIN Groups g
--ON gs.GroupId=g.Id

--JOIN Marks m
--ON s.Mark BETWEEN m.Min AND m.Max

--SELECT * FROM v_GetStudentsDetails

--CREATE VIEW v_GetStudentsMarks 
--AS
--SELECT s.Name, Surname, Email, Mark,  Letter
--FROM Students s

--JOIN Marks m
--ON s.Mark BETWEEN m.Min AND m.Max



--Cinema DB
--TABLES:
--Kino, Janr, Seans, Bilet, Mushteriler, Aktyor, Hall

--CREATE TABLE StudentDetails(
--	Id int primary key identity,
--	Phone nvarchar(100),
--	StudentId int references Students(Id)
--)

--ALTER TABLE Students
--Add StudentDetailId int references StudentDetails(Id)