--------------------Comment---------------------------

--Single line Comment

/*Multiple line Comment 
Multiple line Comment 
Multiple line Comment */

--Comment
--CtrlK +CtrlC
--UnComment
--ctrl K + Ctrl U
-----------------------------------------------------------------------------------------


----------------------Variables--------------------------------------

----------Global Variable--------------------
print @@Version
print @@ServerName
print @@Language

--Name Convention
--camelCase
print @@serverName
--PascalCase
print @@ServerName

---------------Local Variable-----------

declare @age int =25
set @age=10
print @age

-----------------------DT-------------------------
declare @name char(4)='ali'
print @name

declare @name02 varchar(4)='Mariam'
print @name02

declare @name03 varchar(Max)='Mariam'
print @name03

declare @name04 nvarchar(15)=N'????'
print @name04

---------------------------------------------DDL----------------------------
--Create Database
Create database CompanyTesttt

--Use Database
Use Company
--Create Table

Create table Employees
(
SSN int Primary Key Identity(1,1),
Fname nvarchar(15) Not Null,--Required
Lname nvarchar(15) ,---Optional
Gender char(1),
Dnum int ,---FK
SuperSSN int References  Employees(SSN)
)
Create table Departments(
Dnum int Primary key identity(10,10),
Dname nvarchar(30) not null,
ManagerId int not null unique references Employees(SSN),
Hiring_date date not null

)
Create table Department_Locationes(
Dnum int references Departments(Dnum),
Location nvarchar(50) default 'Cairo',
Primary Key(Dnum,Location)--Composit PK

)

Create table Projects(
Pnum int Primary key ,
Pname nvarchar(50)not null,
Location nvarchar(30),
City nvarchar(30),
Dnum int references Departments(Dnum)


)
Create table Dependent(
Name nvarchar(50) ,
Birhdate date,
Gender char(1),
ESSN int references Employees(SSN),
Primary key(Name,ESSN) --Composit PK


)
Create table Employee_Project(
ESSN int references Employees (SSN),
Pno int references Projects(Pnum),
NumberOfHourse int
Primary Key (ESSN,Pno)
)

-- 2. Alter (Update Structure)
--======================
-- Alter Database Name 
Alter Database CompanyTesttt02
modify name  = CompanyTesttt

-- Alter Database Object 
--==========================
-- Alter Add [Column - Constraint]
--====================================
-- Add New Column 
Alter table Employees
add Test int
--------------------------------------------------
-- Add Constraint 
Alter table Employees
add constraint UQ_Test unique (Test)
-------------------------------------------------------
alter table Employees 
add  unique (Test)
------------------------------------------
-- Alter datatype of an existing Column
Alter Table Employees
alter column Test Bigint
------------------------------------------------------
-- Add (foreign key) references to column 
Alter Table Employees
add Constraint FKKey foreign Key (DNum) references Departments (Dnum)
 
Alter Table Employees
add foreign key (Dnum) references Departments(Dnum)
------------------------------------------------------------------------
-- Drop Column 
Alter Table Employees 
Drop column Test

-- Drop Constraint 
Alter Table Employees 
Drop Constraint UQ_Test

-- Drop (foreign key) references to column 
Alter Table Employees
drop constraint FK_Work 


-- 3. Drop
--=========

-- Drop Table 
Drop Table Employees

-- Drop Database
Drop Database Company









