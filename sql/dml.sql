use Company

--add new column to employees table
alter table employees
add salary int

-- ----------- Data Manipulation Language --------------
-- --===================================================
-- -- 1. Insert 
-- --===========
-- -- 1.1 Simple Insert  (Insert Just Only One Row)
-- --===============================================

insert into Employees
values ('Mariam','ali','F','5/12/2000',Null,Null,15000)

-- Insert into Employees
-- values('aya','ahmed','f','6/19/1999',2000,Null,1)

-- insert into Employees (Fname,Salary)
-- values('oamr',6000)

-- insert into Employees (Gender,Salary)--not allowed
-- values('m',6000)
-- /* If a column is not in column_list, the Database Engine must be able to provide a value 
-- based on the definition of the column; otherwise, the row cannot be loaded. 
-- The Database Engine automatically provides a value for the column if the column:*/

-- -- 1. Has an IDENTITY property. The next incremental identity value is used.
-- -- 2. Has a default. The default value for the column is used.
-- -- 3. Has a timestamp data type. The current timestamp value is used.
-- -- 4. Is nullable. A null value is used.
-- -- 5. Is a computed column. The calculated value is used.

-- -- 1.2 Row Constructor Insert (More Than One Row)
-- --===============================================
-- insert into Employees
-- values('mohamed','hassan','M','9/11/2001',50000,Null, 1),
-- ('menna', 'ibrahim','F','12/20/2005',4000,null,2),
-- ('samma','ahmed','F','4/4/1995',9000,null ,1)

-- insert into Employees (Fname, Salary)
-- values('malek',8000),
-- ('youssef',15000),
-- ('amany',7000)





-- -------------------------------------------------------------------------------------------------
-- -- 2. Update 
-- --===========
-- update Employees
-- set SuperId =2
-- where Id=1

-- update Employees
-- set Lname='mahmoud'
-- where Id=3

-- update Employees
-- set Gender ='M',Birthdate='6/18/2003'
-- where Id=3
-- update Employees
-- set salary=salary+salary*.1
-- where Gender='F' and salary<5000

-- -------------------------------------------------------------------------------------------------
-- -- 3. Delete
-- --===========
-- delete from Employees
-- where Id=1


-- -------------------------------------------------------------------------
-- ---------------- Data Query Language Category ----------------------------
-- ---------------------------------------------------------------------------
-- use ITI

-- -- Display All Data For All Students
-- -------------------------------------
-- select *
-- from Student

-- --------------------------------------------------------------
-- -- Display First Name , Lsat Name And Age For All Students
-- --------------------------------------------------------------
-- select St_Fname,St_Lname,St_Age
-- from Student

-- ------------------------------------------------------------------
-- -- Display Id , First Name , Address And Age For Specific Student
-- -------------------------------------------------------------------
-- select  St_Id,St_Fname,St_Address
-- from Student 
-- where St_Id=3

-- ---------------------------------------------------------------------------------
-- -- Display Id , First Name And Age For Students That Their Age is More Than 23
-- -----------------------------------------------------------------------------------
-- select St_Id,St_Fname, St_Age
-- from Student
-- where St_Age >23
-- -----------------------------------------------------------------------------------
-- -- Display Id , First Name And Age For Students That Their Age is in Range 23 , 30
-- -----------------------------------------------------------------------------------

-- select St_Id, St_Fname,St_Age
-- from Student
-- where St_Age >=23 and St_Age<=30

-- select St_Id, St_Fname,St_Age
-- from Student
-- where St_Age between 23 and 30

-- ----------------------------------------------------------------------------------------
-- -- Display Id , First Name And Age For Students That Their Age is Not in Range 23 , 30
-- ----------------------------------------------------------------------------------------

-- select St_Id, St_Fname,St_Age
-- from Student
-- where St_Age <23 or St_Age >30

-- select St_Id, St_Fname,St_Age
-- from Student
-- where St_Age not between 23 and 30

-- ----------------------------------------------------------------------------------------
-- -- Display Student Id , Student FName, Student Address Who Lives In Cairo Or Alex
-- ----------------------------------------------------------------------------------------
-- select St_Id,St_Fname,St_Address
-- from Student
-- where St_Address ='Cairo' or  St_Address='alex'

-- select  St_Id,St_Fname,St_Address
-- from Student
-- where St_Address in('cairo','alex')
-- ----------------------------------------------------------------------------------------
-- -- Display Student Id , Student FName, Student Address Who Not Lives In Cairo Or Alex
-- ----------------------------------------------------------------------------------------
--   select St_Id,St_Fname,St_Address
-- from Student
-- where St_Address !='Cairo' and  St_Address <>'alex'
  
  
--   select  St_Id,St_Fname,St_Address
-- from Student
-- where St_Address not in('cairo','alex')
-- ------------------------------------------------------------
-- --  Display All Data Of All Students Who Hasn't a Supervisor
-- ------------------------------------------------------------
-- select *
-- from Student
-- where St_super is null

-- ------------------------------------------------------------
-- --  Display All Data Of All Students Who Has a Supervisor
-- ------------------------------------------------------------
-- select *
-- from Student
-- where St_super is not null

-- ---------------------------------------------------------------------
-- -- Display student where second character of Their First name is 'a' 
-- ---------------------------------------------------------------------
-- select St_Fname
-- from Student
-- where St_Fname like '_a%'


-- /*
-- Wildcard Characters =>
-- _   : represents one, single character
-- %   : represents zero, one, or multiple characters
-- []  : Matches any single character within the specified range 
-- [^] : Matches any single character that is not within the range
-- */

-- -- Examples 

-- -- _a      => Samy , Manar , Sama , Samar , Yassmin
-- -- s%      => Shaimaa , Samy , Safaa , Selim 
-- -- _M%     => Amr , Emad , Amira
-- -- [sa]%   => Ahmed , Shaimaa , Selim , Amr ,Samy
-- -- sa%     => Samy , Sama , Samar
-- -- [^sa]%  => Mohamed , Marwa , Essam 
-- -- [a-m]%  => Malak , Bola , Eman 
-- -- [^a-m]% => Omar , Rawan , Salma
-- -- [463]%  => 6X , 3mr
-- -- %[%]    => Word% , Laila% 
-- -- Display student where last prevoies  character of Their First name is 'a'  --task 
-- SELECT St_Fname
-- FROM Student
-- WHERE St_Fname LIKE '%a_'

-- ---------------------------------------------------------------------
-- -- Display Data Without Duplication
-- ---------------------------------------------------------------------
-- select Distinct St_Fname
-- from Student
-- where St_Fname is not null

-- --------------------------------------------
-- -- Display First Name Of Student In Order 
-- --------------------------------------------

-- select St_Fname
-- from Student
-- where St_Fname is not null
-- order by St_Fname

-- select St_Fname 
-- from Student
-- where St_Fname is not null
-- order by St_Fname desc

-- select St_Fname ,St_Lname
-- from Student
-- where St_Fname is not null and St_Lname is not null
-- order by St_Fname ,St_Lname desc


 
 
-- select St_Fname ,St_Lname
-- from Student
-- where St_Fname is not null and St_Lname is not null
-- order by  1 ,2 desc



-- -----------------------------------------------------------
-- -------------------------- Joins --------------------------
-- -----------------------------------------------------------
-- -- Cross Join (Cartisian product)
-- ----------------------------------
-- -- Old Syntax

-- select  S.St_Fname,D.Dept_Name
-- from Student S ,Department D
-- -- New Syntax
-- select  S.St_Fname,D.Dept_Name
-- from Student S cross join Department D
-- -----------------------------------------------------------
-- -- Inner Join (Equi Join)
-- ----------------------------------
-- -- Old Syntax 
-- select  S.St_Fname, D.Dept_Name
-- from Student S , Department D
-- where D.Dept_Id =S.Dept_Id

-- -- New Syntax 
-- select  S.St_Fname, D.Dept_Name
-- from Student S inner join Department D
-- on D.Dept_Id =S.Dept_Id

-- select  S.St_Fname, D.Dept_Name
-- from Student S  join Department D
-- on D.Dept_Id =S.Dept_Id


-- -----------------------------------------------------------
-- -- Outer Joins 
-- ---------------
-- -- 1. Left Outer Join 
-- -----------------------
-- select S.St_Fname,D.Dept_Name
-- from Student S left outer join Department D
-- on D.Dept_Id=S.Dept_Id


-- select S.St_Fname,D.Dept_Name
-- from Department D  left  join Student S 
-- on D.Dept_Id=S.Dept_Id



--  ----------------------------------------------------------------------
-- -- 2. Right Outer Join 
-- -----------------------
-- select S.St_Fname,D.Dept_Name
-- from Student S Right outer join Department D
-- on D.Dept_Id=S.Dept_Id

-- select S.St_Fname,D.Dept_Name
-- from Department D  Right  join Student S 
-- on D.Dept_Id=S.Dept_Id

-- ---------------------------------------------------------------------------------
-- -- 3. Full Outer Join 
-- -----------------------
-- select S.St_Fname,D.Dept_Name
-- from Student S Full outer join Department D
-- on D.Dept_Id=S.Dept_Id

-- select S.St_Fname,D.Dept_Name
-- from Department D  Full  join Student S 
-- on D.Dept_Id=S.Dept_Id


-- --------------------------------------------------------------------------------------------------
-- -- Self Join
-- ---------------
-- -- Get Id and Name Of Students That Have a Supervisor And Get Supervisor Name 
-- -------------------------------------------------------------------------------
-- select Sts.St_Id, Sts.St_Fname ,Super.St_Fname
-- from Student Sts, Student Super
-- where Super.St_Id= sts.St_super

-- select Sts.St_Id, Sts.St_Fname ,Super.St_Fname
-- from Student Sts inner join Student Super
-- on Super.St_Id= sts.St_super

-- select Sts.St_Id as Student_ID, Sts.St_Fname as StudentName ,Super.St_Fname as Supername
-- from Student Sts, Student Super
-- where Super.St_Id= sts.St_super

-- select Sts.St_Id [Student_ID], Sts.St_Fname [StudentName] ,Super.St_Fname  [Supername]
-- from Student Sts, Student Super
-- where Super.St_Id= sts.St_super

-- select Sts.St_Id 'StdID', Sts.St_Fname 'StudentName' ,Super.St_Fname  'Supername'
-- from Student Sts, Student Super
-- where Super.St_Id= sts.St_super
-- -- Get All Data Of Students That Have a Supervisor Or Not 
-- -- And If He Has a Supervisor Get Supervisor Name --Task
-- ------------------------------------------------------------

-- Select Stud.* , Supervisors.St_Fname [Supervisor Name]
-- from Student Stud Left join Student Supervisors
-- on Supervisors.St_Id = Stud.St_super


-- Select Stud.* , Supervisors.St_Fname [Supervisor Name]
-- from Student Stud Right join Student Supervisors
-- on Supervisors.St_Id = Stud.St_super



-- -----------------------------------------------------------
-- -- Multiple-Table Joins 
-- ------------------------
-- select  S.St_Fname ,C.Crs_Name ,SC.Grade
-- from Student S, hr.Course C, Stud_Course SC
-- where S.St_Id=SC.St_Id and C.Crs_Id= SC.Crs_Id and SC.Grade> 100

-- select S.St_Fname ,C.Crs_Name ,SC.Grade
-- from Student S inner join Stud_Course SC
-- on S.St_Id= SC.St_Id inner join hr.Course C
-- on C.Crs_Id=SC.Crs_Id 
-- where Sc.Grade>100




-- -----------------------------------------------------------
-- -- DML With Joins 
-- -------------------
-- -- Update 
-- ------------
-- --increase student live in cairo 10 grade

-- select *
-- from Student S, Stud_Course SC
-- where S.St_Id= SC.St_Id and S.St_Address='Cairo'
-- update SC
-- set SC.Grade +=10  
-- from Student S, Stud_Course SC
-- where S.St_Id= SC.St_Id and S.St_Address='Cairo'


-- ------------------------------------------------------------
-- -- Delete 
-- --Delete student that thier age is 28 and take course

-- Select Distinct  Std.St_Id , St_Fname , StdCrs.Crs_Id 
-- from Student Std join Stud_Course StdCrs
-- on Std.St_Id = StdCrs.St_Id
-- Where Std.St_Age = 28


-- delete StdCrs
-- from Student Std join Stud_Course StdCrs
-- on Std.St_Id = StdCrs.St_Id
-- Where Std.St_Age = 28


-- --Delete student who live in cairo and take courses

-- Select  Std.St_Id , St_Fname 
-- from Student Std join Stud_Course StdCrs
-- on Std.St_Id = StdCrs.St_Id
-- Where Std.St_Address = 'Cairo'

-- Delete StdCrs
-- from Student Std join Stud_Course StdCrs
-- on Std.St_Id = StdCrs.St_Id
-- Where Std.St_Address = 'Cairo'


