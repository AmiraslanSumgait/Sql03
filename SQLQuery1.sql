CREATE TABLE Departments(
Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Financing MONEY DEFAULT 0 CHECK(Financing>0) NOT NULL,
[Name] NVARCHAR(100) CHECK(LEN([Name])>0) UNIQUE([Name]) NOT NULL
)
TRUNCATE TABLE Departments
INSERT INTO Departments ( Financing, [Name])
VALUES 
(10000,'Operations Department'),
(14000,'Finance Department'),
(21000,'Sales Department'),
(32000,'Human Resource Department'),
(20000,'Purchase Department')




CREATE TABLE Faculties(
Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
Financing MONEY DEFAULT 0 CHECK(Financing>0) NOT NULL,
Dean NVARCHAR(MAX) CHECK(LEN(Dean)>0)  NOT NULL,
[Name] NVARCHAR(100) CHECK(LEN([Name])>0) UNIQUE([Name]) NOT NULL
)
TRUNCATE TABLE Faculties
INSERT INTO Faculties ( Financing,Dean, [Name])
VALUES 
(7.5,'Ramiz','Information Technologies'),
(10,'Samir','Electo Energetic'),
(12,'Kazim','Economic'),
(100,'Mehemmed','Computer Science')





CREATE TABLE Groups(
Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
[Name] NVARCHAR(100) CHECK(LEN([Name])>0) UNIQUE([Name]) NOT NULL,
Rating INT CHECK(Rating>0 AND Rating<5) NOT NULL,
[Year] INT CHECK([Year]>1 AND [Year]<5) NOT NULL
)
TRUNCATE TABLE Groups
INSERT INTO Groups ( [Name],Rating, [Year])
VALUES 
('All Stars',2,2),
('Amigos',3,3),
('Avengers',1,4),
('Bannermen.',3,4),
('Bosses',4,3)





CREATE TABLE Teachers(
Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
EmploymentDate DATE CHECK(EmploymentDate>'01-01-1990') NOT NULL,
Assistant BIT DEFAULT 0 NOT NULL,
Professor BIT DEFAULT 0 NOT NULL,
[Name] NVARCHAR(MAX) CHECK(LEN([Name])>0)  NOT NULL,
Position NVARCHAR(MAX) CHECK(LEN(Position)>0)  NOT NULL,
Premium MONEY DEFAULT 0 CHECK(Premium>0) NOT NULL,
WageRate MONEY  CHECK(WageRate>0) NOT NULL,
Surname NVARCHAR(MAX) CHECK(LEN(Surname)>0)  NOT NULL
)
TRUNCATE TABLE Teachers
INSERT INTO Teachers( EmploymentDate,Assistant, Professor,[Name],Position,Premium,WageRate,Surname)
VALUES 
('1992',1,1,'Gulu','Mathematic',190,1000,'Eliyeva'),
('1991',0,0,'Samir','Physic',220,2300,'Hesenzade'),
('2000',1,0,'Ferhad','Physic',140,3200,'Zeynalli'),
('1994',0,1,'Akif','Sport',200,4300,'Agamaliyev')
