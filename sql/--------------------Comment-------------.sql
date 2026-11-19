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
--print @@Version
--print @@ServerName
--print @@Language

--Name Convention
--camelCase
--print @@serverName
--PascalCase
--print @@ServerName

---------------Local Variable-----------
-- DECLARE @age int = 5
-- SET @age = 25
-- PRINT @age


-- DECLARE @name VARCHAR(30) = 'basel'
-- PRINT @name


-----------------------DT-------------------------
--declare @name char(4)='ali'
--print @name

--declare @name02 varchar(4)='Mariam'
--print @name02

--declare @name03 varchar(Max)='Mariam'
--print @name03

--declare @name04 nvarchar(15)=N'????'
--print @name04

DECLARE  @num1 DECIMAL(18,5) = 60.134
DECLARE @smallIntExample SMALLINT = 120
DECLARE @intExample INT = 1000
DECLARE @bitExample BIT = 1
DECLARE @decimalExample DECIMAL(18,5) = 60.134
DECLARE @moneyExample MONEY = 1234.56
DECLARE @smallMoneyExample SMALLMONEY = 123.45

DECLARE @timeExample TIME = '14:30:00'
DECLARE @dateExample DATE = '2025-01-15'
DECLARE @dateTimeExample DATETIME = '2025-01-15 14:30:00'
DECLARE @smallDateTimeExample SMALLDATETIME = '2025-01-15 14:30'

DECLARE @charExample CHAR(10) = 'Hello'
DECLARE @varcharExample VARCHAR(20) = 'Hello'
DECLARE @varcharMaxExample VARCHAR(MAX) = 'Example text'
DECLARE @ncharExample NCHAR(10) = N'Hello'
DECLARE @nvarcharExample NVARCHAR(20) = N'Hello'
DECLARE @nvarcharMaxExample NVARCHAR(MAX) = N'Example text'

---------------------------------------------DDL----------------------------
--Create Database
-- use company
-- create TABLE employees(
--     id INT PRIMARY KEY  IDENTITY(1,1),
--     fname VARCHAR(30) NOT NULL ,--required
--     lname VARCHAR(30),
--     gender CHAR(1),
--     birthdate DATE,
--     dnum INT,--fk
--     superId int REFERENCES employees(id),
-- )

-- CREATE TABLE departments(
--     dnum int PRIMARY KEY IDENTITY(10,10),
--     dname VARCHAR(20) NOT NULL,
--     manager_id int NOT NULL UNIQUE  REFERENCES  employees(id),
--     hiringdate DATE 
-- )
-- CREATE TABLE department_locations(
--     dnum int REFERENCES departments(dnum),
--     locations VARCHAR(50)  DEFAULT 'cairo',
--     PRIMARY KEY(dnum,locations)--composit primary key
-- )
-- CREATE TABLE projects(
--     pnum int PRIMARY KEY IDENTITY(1,1),
--     pname VARCHAR(20) NOT NULL,
--     location VARCHAR(50),
--     city VARCHAR(20),
--     dnum int REFERENCES departments(dnum)
-- )
-- CREATE TABLE dependents(
--     name VARCHAR(40),
--     birthDate DATE,
--     gender CHAR(1),
--     empId int REFERENCES employees(id),
--     PRIMARY KEY(name,empId)
-- )

-- CREATE TABLE emp_project(
--     empId int REFERENCES employees(id),
--     prNum int REFERENCES projects(pnum),
--     PRIMARY KEY(empId,prNum)
-- )
-- 2. Alter (Update Structure)
--======================
-- Alter Database Name 
--Alter Database CompanyTesttt02
--modify name  = CompanyTesttt

-- Alter Database Object 
--==========================
-- Alter Add [Column - Constraint]
--====================================
-- Add New Column 
--Alter table Employees
--add Test int
--------------------------------------------------
-- Add Constraint 
--Alter table Employees
--add constraint UQ_Test unique (Test)
-------------------------------------------------------
--alter table Employees 
--add  unique (Test)
------------------------------------------
-- Alter datatype of an existing Column
--Alter Table Employees
--alter column Test Bigint
------------------------------------------------------
-- Add (foreign key) references to column 
--Alter Table Employees
--add Constraint FKKey foreign Key (DNum) references Departments (Dnum)

--Alter Table Employees
--add foreign key (Dnum) references Departments(Dnum)
------------------------------------------------------------------------
-- Drop Column 
--Alter Table Employees 
--Drop column Test

-- Drop Constraint 
--Alter Table Employees 
--Drop Constraint UQ_Test

-- Drop (foreign key) references to column 
--Alter Table Employees
--drop constraint FK_Work 


-- 3. Drop
--=========

-- Drop Table 
--Drop Table Employees

-- Drop Database
--Drop Database Company









