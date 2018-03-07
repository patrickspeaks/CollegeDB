IF EXISTS (SELECT * FROM sys.databases WHERE name = 'College')
 DROP DATABASE College
 GO

create database College
Go

Use College
Go

create table Students(
ID int identity(1,1) Not Null CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED,
FName varchar (30) null,
LName varchar (30) null,
SSN int not null,
Address varchar (100) null,
City varchar (30) null,
State varchar (30) null,
ZipCode int null,
PhoneNumber bigint null
)



create table Classes(
ID int identity(1,1) Not Null CONSTRAINT [PK_Classes] PRIMARY KEY CLUSTERED,
StudentID int Not Null CONSTRAINT FK_Classes_Students FOREIGN KEY (StudentID)     
    REFERENCES dbo.Students(ID),
Title varchar (20) not null,
Number int null,
Department varchar (20) null
)

create table Scores(
ID int identity(1,1) Not Null CONSTRAINT [PK_Scores] PRIMARY KEY CLUSTERED,
ClassesID int Not Null CONSTRAINT FK_Scores_Classes FOREIGN KEY (ClassesID)     
    REFERENCES dbo.Classes(ID),
Types varchar (20) null,
Description varchar (100) null,
DateAssigned datetime null,
DateDue datetime null,
DateSubmitted datetime null,
PointsEarned int null,
PointsPossible int null
)

INSERT INTO Students([FName],[LName],[ssn],[address],[city],[state],[zipcode],[phonenumber]) 
VALUES
('Marc','Bryant','123456789','123 Main St.','Chicago','IL','60628','3124567894'),
('Jerry','Howard','012345678','654 Bell Dr.','Naperville','IL','60540','7736867854'),
('John','Ground','234567890','10818 S. King Dr.','Chicago','IL','60628','7735201456'),
('Rick','Snow','987654321','6745 W. Dearborn St.','Chicago','IL','60606','3124567894')

insert into Classes (StudentID,title,number,department)
values
(4,'Algebra',101,'Math'),
(4,'English',205,'English'),
(4,'Trigonometry',201,'Math'),
(1,'Algebra',101,'Math'),
(1,'English',205,'English'),
(1,'Trigonometry',201,'Math'),
(2,'Calculus',200,'Math'),
(2,'English',205,'English'),
(3,'Accounting',100,'Math'),
(3,'Algebra',101,'Math'),
(3,'Writing',202,'English'),
(3,'English',205,'English')

insert into Scores(classesID,types,Description,DateAssigned,DateDue,
DateSubmitted,PointsEarned,PointsPossible)
values 
(7,'HW', 'Chapter5','02-28-18','03-14-18','03-05-18',83,100),
(3,'Quiz', 'Chapter3','01-15-18','02-11-18','02-01-18',60,100),
(5,'HW', 'Project','01-05-18','03-05-18','03-02-18',92,100)


select*from Scores








