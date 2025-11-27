Create Database Sample2

Alter Database Sample2 Modify Name = Sample4

 Execute SP_renameDB 'Sample4','Sample2'

 Drop Database Sample2

 Create Database Sample

 USE [Sample]
 Go
 Create Table tblGender
 (
 ID int NOT NULL Primary Key,
 Gender nvarchar(50) NOT NULL
 )

 Alter Table tblperson add constraint tblperson_GenderID_FK
 Foreign Key(GenderID) references tblGender (ID)

INSERT INTO tblgender (ID, Gender) VALUES (1, 'Male');
INSERT INTO tblgender (ID, Gender) VALUES (2, 'Female');
INSERT INTO tblgender (ID, Gender) VALUES (3, 'Unknown');

INSERT INTO tblperson (ID, Name, Email, GenderId) VALUES (1, 'John', 'j@j.com', 1);
INSERT INTO tblperson (ID, Name, Email, GenderId) VALUES (2, 'Mary', 'm@m.com', 2);
INSERT INTO tblperson (ID, Name, Email, GenderId) VALUES (3, 'Simon', 's@s.com', 1);
INSERT INTO tblperson (ID, Name, Email, GenderId) VALUES (4, 'Sam',  'sam@sam.com', 1);
INSERT INTO tblperson (ID, Name, Email, GenderId) VALUES (5, 'May',  'may@may.com', 2);
INSERT INTO tblperson (ID, Name, Email, GenderId) VALUES (6, 'Kenny','k@k.com',   3);

Select * from tblGender
Select * from tblPerson

INSERT INTO tblPerson (ID,Name,Email,GenderID) VALUES (10,'ALI','a@h.com',NULL)

ALTER Table tblperson
Add constraint DF_tblperson_GenderID
Default 3 for GenderID

ALTER Table tblperson
Drop constraint DF_tblperson_GenderID

Delete from tblGender where ID = 3

select * from tblPerson

INSERT INTO tblPerson VALUES (11,'ZULQAR','z@z.com',NULL,25)

Delete from tblPerson where ID = 11

Alter Table tblperson
Drop Constraint CK_tblPerson_Age

Alter Table tblperson
Add constraint CK_tblperson_Age CHECK (AGE > 0 AND AGE < 150)

Select * from tblPerson

Select * from tblperson1

INSERT INTO tblPerson1 Values ('Hamza')

Delete from tblPerson1 where PersonID =1

SET IDENTITY_INSERT tblPerson1 OFF

Delete from tblPerson1

DBCC CHECKIDENT(tblperson1,Reseed,0)

Create Table test1
(
id int identity(1,1),
value nvarchar(20) 
)

Create Table test2
(
id int identity(1,1),
value nvarchar(20) 
)

INSERT INTO test1 VALUES ('X')
select * from test1

Select SCOPE_IDENTITY()
Select @@IDENTITY
Select IDENT_CURRENT('test2')

Create Trigger trforinsert ON test1 For insert 
AS
Begin
insert into test2 Values ('YYYY')
End 

Select * from test1
select * from test2

insert into test2 values ('zzzz')

select * from tblPerson

delete from tblPerson

Alter table tblperson
add constraint UQ_tblperson_email UNIQUE (Email)

insert into tblPerson VALUES (2,'AHMAD','a@a.com',NULL,20)

Alter Table tblperson
Drop Constraint UQ_tblperson_email

select * from tblperson

alter table tblperson
Add city nvarchar(50) 

delete from tblPerson

select * from tblPerson


INSERT INTO tblperson (ID, Name, Email, GenderId, Age, City)
VALUES (1, 'Tom', 't@t.com', 1, 23, 'London');

INSERT INTO tblperson (ID, Name, Email, GenderId, Age, City)
VALUES (2, 'John', 'j@j.com', 1, 20, 'New York');

INSERT INTO tblperson (ID, Name, Email, GenderId, Age, City)
VALUES (3, 'Mary', 'mary.mary.com', 2, 21, 'Sydney');

INSERT INTO tblperson (ID, Name, Email, GenderId, Age, City)
VALUES (4, 'Josh', 'josh.j@dell.com', 1, 29, 'London');

INSERT INTO tblperson (ID, Name, Email, GenderId, Age, City)
VALUES (5, 'Sara', 'sara@abc.com', 2, 25, 'Mumbai');

select * from tblperson

select DISTINCT Name, City from tblperson

select * from tblperson where city = 'London'


select * from tblperson where city <> 'London'
select * from tblperson where city != 'London'

Select * from tblperson where Age in (20,23,25)
Select * from tblperson where Age BETWEEN 20 AND 25

Select * from tblperson where City like 'L%'
Select * from tblperson where email Not like '%@%' 
SELECT * FROM tblperson WHERE Email  not like '_@_.com'

Select * from tblperson where name like '[^SMT]%'

SELECT * FROM tblperson where (city='London' or city ='Newyork') AND Age > 25
Select * from tblperson order by Name DESC,Age ASC

sELECT top 10 * from  tblperson
select top 50 percent * from tblperson

select top 1 * from tblperson order by age DESC 

select * from tblperson

Alter table tblperson
Add salary int

Delete from tblperson

INSERT INTO tblperson (ID, Name, Email, GenderID, Age, city, Salary)
VALUES (1, 'Tom', 'tom.london@example.com', 1, 23, 'London', 4000);

INSERT INTO tblperson (ID, Name, Email, GenderID, Age, city, Salary)
VALUES (2, 'Pam', 'pam.ny@example.com', 2, 20, 'New York', 3000);

INSERT INTO tblperson (ID, Name, Email, GenderID, Age, city, Salary)
VALUES (3, 'John', 'john.london@example.com', 1, 21, 'London', 3500);

INSERT INTO tblperson (ID, Name, Email, GenderID, Age, city, Salary)
VALUES (4, 'Sam', 'sam.london@example.com', 1, 29, 'London', 4500);

INSERT INTO tblperson (ID, Name, Email, GenderID, Age, city, Salary)
VALUES (5, 'Todd', 'todd.sydney@example.com', 1, 25, 'Sydney', 2800);

INSERT INTO tblperson (ID, Name, Email, GenderID, Age, city, Salary)
VALUES (6, 'Ben', 'ben.ny@example.com', 1, 20, 'New York', 7000);

INSERT INTO tblperson (ID, Name, Email, GenderID, Age, city, Salary)
VALUES (7, 'Sara', 'sara.sydney@example.com', 2, 21, 'Sydney', 4800);

INSERT INTO tblperson (ID, Name, Email, GenderID, Age, city, Salary)
VALUES (8, 'Valarie', 'valarie.ny@example.com', 2, 29, 'New York', 5500);

INSERT INTO tblperson (ID, Name, Email, GenderID, Age, city, Salary)
VALUES (9, 'James', 'james.london@example.com', 1, 25, 'London', 6500);

INSERT INTO tblperson (ID, Name, Email, GenderID, Age, city, Salary)
VALUES (10, 'Russell', 'russell.london@example.com', 1, 23, 'London', 8800);

Select * from tblPerson
select MIN(salary ) from tblperson

select city,sum(salary) as totalsalary 
from tblPerson
group by city 

select city,genderID,sum(salary) as totalsalary ,Count(ID) as totalemployee
from tblPerson
group by city,genderID
order by city

select city,genderID,sum(salary) as totalsalary ,Count(ID) as totalemployee
from tblPerson
where genderid=1
group by city,genderID

select city,genderID,sum(salary) as totalsalary ,Count(ID) as totalemployee
from tblPerson
group by city,genderID
Having genderID=1
order by city

select city,genderID,sum(salary) as totalsalary ,Count(ID) as totalemployee
from tblPerson
group by city,genderID
Having sum(salary)> 5000
order by city

select * from tblPerson where sum(salary)>5000  --not used 
select * from tblperson

-- Create table for PeopleData
CREATE TABLE PeopleData (
    ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    GenderID INT,
    Age INT,
    city VARCHAR(255),
    Salary INT,
    DepartmentId INT
    FOREIGN KEY (DepartmentId) REFERENCES tblDepartment(Id)
);

-- Create table for tblDepartment
CREATE TABLE tblDepartment (
    Id INT PRIMARY KEY,
    DepartmentName VARCHAR(255),
    Location VARCHAR(255),
    DepartmentHead VARCHAR(255)
);

select * from PeopleData
select * from tblDepartment

INSERT INTO tblDepartment (Id, DepartmentName, Location, DepartmentHead) VALUES
(1, 'IT', 'Lahore', 'Ali'),
(2, 'HR', 'Karachi', 'Ayesha'),
(3, 'Finance', 'Islamabad', 'Zain'),
(4, 'Marketing', 'Lahore', 'Sara');

INSERT INTO PeopleData (ID, Name, Email, GenderID, Age, city, Salary, DepartmentId) VALUES
(1, 'John', 'john@example.com', 1, 28, 'Lahore', 60000, 1),
(2, 'Mary', 'mary@example.com', 2, 32, 'Karachi', 55000, 2),
(3, 'Ahmed', 'ahmed@example.com', 1, 40, 'Islamabad', 75000, 3),
(4, 'Sara', 'sara@example.com', 2, 25, 'Lahore', 50000, 4),
(5, 'Kenny', 'kenny@example.com', 3, 30, 'Faisalabad', 48000, 1);

select Name,genderID,Salary,departmentName
from PeopleData
inner join tblDepartment
ON PeopleData.DepartmentId=tblDepartment.Id

select Name,genderID,Salary,departmentName
from PeopleData
Left outer join tblDepartment
ON PeopleData.DepartmentId=tblDepartment.Id

select Name,genderID,Salary,departmentName
from PeopleData
Right outer join tblDepartment
ON PeopleData.DepartmentId=tblDepartment.Id

select Name,genderID,Salary,departmentName
from PeopleData
FULL outer join tblDepartment
ON PeopleData.DepartmentId=tblDepartment.Id

select Name,genderID,Salary,departmentName
from PeopleData
cross join tblDepartment

select Name,genderID,Salary,departmentName
from PeopleData
LEFT outer join tblDepartment
ON PeopleData.DepartmentId=tblDepartment.Id
where PeopleData.DepartmentId IS NULL 

select Name,genderID,Salary,departmentName
from PeopleData
Right outer join tblDepartment
ON PeopleData.DepartmentId=tblDepartment.Id
where PeopleData.DepartmentId IS NULL 

select Name,genderID,Salary,departmentName
from PeopleData
FULL outer join tblDepartment
ON PeopleData.DepartmentId=tblDepartment.Id
where PeopleData.DepartmentId IS NULL 
OR
tblDepartment.Id IS NULL

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    ManagerID INT,
    FOREIGN KEY (ManagerID) REFERENCES Employee(EmployeeID)
);

select * from Employee

INSERT INTO Employee (EmployeeID, Name, ManagerID) VALUES (3, 'Todd', NULL);
INSERT INTO Employee (EmployeeID, Name, ManagerID) VALUES (1, 'Mike', 3);
INSERT INTO Employee (EmployeeID, Name, ManagerID) VALUES (2, 'Rob', 1);
INSERT INTO Employee (EmployeeID, Name, ManagerID) VALUES (4, 'Ben', 1);
INSERT INTO Employee (EmployeeID, Name, ManagerID) VALUES (5, 'Sam', 1);

Select E.Name as Employee,M.Name as Manager
from Employee as  E
left join Employee as M
ON E.ManagerID=M.EmployeeID


Select E.Name as Employee,M.Name as Manager
from Employee as  E
INNER join Employee as M
ON E.ManagerID=M.EmployeeID


Select E.Name as Employee,M.Name as Manager
from Employee as  E
Cross join Employee as M

select * from Employee

Select COALESCE(NULL,'No manager') as Manager

Select E.Name as Employee,ISNULL(M.Name,'NO MANAGER') as Manager
from Employee  E
left join Employee M
ON E.ManagerID=M.EmployeeID

Select E.Name as Employee,COALESCE(M.Name,'NO MANAGER') as Manager
from Employee  E
left join Employee M
ON E.ManagerID=M.EmployeeID

CASE WHEN EXPRESSION THEN '' ELSE '' END 

Select E.Name as Employee, CASE WHEN M.NAME IS NULL THEN 'NO MANAGER' ELSE M.NAME END as Manager
from Employee  E
left join Employee M
ON E.ManagerID=M.EmployeeID

CREATE TABLE PersonName (
    Id INT PRIMARY KEY,
    FirstName VARCHAR(50),
    MiddleName VARCHAR(50),
    LastName VARCHAR(50)
);

INSERT INTO PersonName (Id, FirstName, MiddleName, LastName) VALUES (1, 'Sam', NULL, NULL);
INSERT INTO PersonName (Id, FirstName, MiddleName, LastName) VALUES (2, NULL, 'Todd', 'Tarzan');
INSERT INTO PersonName (Id, FirstName, MiddleName, LastName) VALUES (3, NULL, NULL, 'Sara');
INSERT INTO PersonName (Id, FirstName, MiddleName, LastName) VALUES (4, 'Ben', 'Parker', NULL);
INSERT INTO PersonName (Id, FirstName, MiddleName, LastName) VALUES (5, 'James', 'Nick', 'Nancy');

Select * from PersonName

select id,coalesce(firstname,middlename,lastname) as name 
from PersonName

-- Create table for Indian customers
CREATE TABLE tblIndiaCustomers (
    id INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(50)
);

-- Insert data into tblIndiaCustomers
INSERT INTO tblIndiaCustomers (id, Name, Email) VALUES
(1, 'Raj', 'R@R.com'),
(2, 'Sam', 'S@S.com');

-- Create table for UK customers
CREATE TABLE tblUKCustomers (
    id INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(50)
);

-- Insert data into tblUKCustomers
INSERT INTO tblUKCustomers (id, Name, Email) VALUES
(1, 'Ben', 'B@B.com'),
(2, 'Sam', 'S@S.com');

select * from tblIndiaCustomers
select * from tblUKCustomers

select * from tblIndiaCustomers
UNION ALL
select * from tblUKCustomers

select * from tblIndiaCustomers
UNION 
select * from tblUKCustomers
ORDER BY NAME

-- Create the tblEmployee table
CREATE TABLE tblEmployee (
    Id INT PRIMARY KEY,
    Name VARCHAR(50),
    Gender VARCHAR(10),
    DepartmentId INT
);

-- Insert data into tblEmployee
INSERT INTO tblEmployee (Id, Name, Gender, DepartmentId) VALUES
(1, 'Sam', 'Male', 1),
(2, 'Ralph', 'Male', 1),
(3, 'Sara', 'Female', 2),
(4, 'Todd', 'Male', 2),
(5, 'John', 'Male', 3),
(6, 'Sana', 'Female', 3),
(7, 'James', 'Male', 4),
(8, 'Rob', 'Male', 4),
(9, 'Steve', 'Male', 5),
(10, 'Pam', 'Female', 5);

select * from tblEmployee

CREATE PROCEDURE SPEMPLOYEES
AS
BEGIN
     SELECT NAME,GENDER FROM tblEmployee 
END

CREATE PROC SPEMPLOYEES
AS
BEGIN
     SELECT NAME,GENDER FROM tblEmployee 
END

SPEMPLOYEES
EXEC SPEMPLOYEES
EXECUTE SPEMPLOYEES

CREATE PROC spgetemployeesbygenderanddepartmentid 
@gender nvarchar(20),
@departmentid int 
as
BEGIN
     select Name ,gender,departmentid from tblEmployee
	 where DepartmentId=@departmentid AND gender = @gender
END

spgetemployeesbygenderanddepartmentid 'Male',1
spgetemployeesbygenderanddepartmentid @departmentid=1,@gender='Male'

sp_helptext SPEMPLOYEES

ALTER PROCEDURE SPEMPLOYEES
AS
BEGIN
     SELECT NAME,GENDER FROM tblEmployee ORDER BY NAME
END

DROP PROC SPEMPLOYEES
ALter PROC spgetemployeesbygenderanddepartmentid 
@gender nvarchar(20),
@departmentid int 
with encryption 
as
BEGIN
     select Name ,gender,departmentid from tblEmployee
	 where DepartmentId=@departmentid AND gender = @gender
END

SP_HELPTEXT spgetemployeesbygenderanddepartmentid

Create proc spgetemployeecountbygender
@gender nvarchar(20),
@employeecount int output
as 
begin
     select @employeecount=count(id) from tblEmployee where
	 gender=@gender
	 end

Declare @totalcount int 
exec spgetemployeecountbygender 'male ',@totalcount output
if (@totalcount is null)
   print 'totalcount is null'
else 
   print 'total count is not null'
print @totalcount

Declare @totalcount int 
exec spgetemployeecountbygender @totalcount output
print @totalcount

sp_help spgetemployeecountbygender
sp_help tblemployee

sp_helptext spgetemployeecountbygender
sp_depends spgetemployeecountbygender

create proc spgettotalcount1
@totalcount int output
as 
begin
    select @totalcount=count(id ) from tblEmployee
end

declare @total int
exec spgettotalcount1 @total out
print @total

create proc spgettotalcount2
as 
begin
    return (select count(id ) from tblEmployee)
end

declare @total int
exec  @total=spgettotalcount2
select @total

create proc spgetnamebyid1
@id int,
@name nvarchar(20) output
as 
begin
    select @name=name from tblEmployee where id=@id
end

declare @name nvarchar(20)
exec spgetnamebyid1 1,@name out
print 'name' + @name

alter proc spgetnamebyid2
@id int
as 
begin
    return (select name from tblEmployee where id=@id)
end

declare @name nvarchar(20)
exec @name= spgetnamebyid2 1
print @name

select ASCII ('A')
select ASCII ('BC')

Select CHAR (65)

declare @start int
set @start=65
while (@start<=90)
begin
 print Char(@start)
 set @start=@start+1
end

declare @startt int
set @startt=97
while (@startt<=122)
begin
 print Char(@startt)
 set @startt=@startt+1
end

select LTRIM('     HELLO')
select LTRIM('HELLO     ')
select UPPER('     HEllo')
select LOWER('HELLO     ')
select REVERSE('HELLO')
select LEN('HELLO')

select Left('ABCDEF',3)
select RIGHT('ABCDEF',3)

Select CHARINDEX ('@','talha@aaa.com')
select SUBSTRING('talha@aaa.com',6,8)

-- Create tblemployee table
CREATE TABLE employeee (
    Id INT,
    FirstName VARCHAR(50),
    MiddleName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Gender VARCHAR(10),
    DepartmentId INT,
    Number INT
);

-- Insert data into tblemployee
INSERT INTO employeee (Id, FirstName, MiddleName, LastName, Email, Gender, DepartmentId, Number) VALUES
(1, 'Sam', 'S', 'Sony', 'Sam@aaa.com', 'Male', 1, 1),
(2, 'Ram', 'R', 'Barber', 'Ram@aaa.com', 'Male', 1, 2),
(3, 'Sara', 'S', 'Sanosky', 'Sara@ccc.com', 'Female', 2, 3),
(4, 'Todd', 'S', 'Gartner', 'Todd@bbb.com', 'Male', 1, 4),
(5, 'John', 'J', 'Grover', 'John@aaa.com', 'Male', 3, 2),
(6, 'Sana', 'J', 'Lenin', 'Sana@ccc.com', 'Female', 2, 2),
(7, 'James', 'P', 'Bond', 'James@bbb.com', 'Male', 1, 1),
(8, 'Rob', 'P', 'Hunter', 'Rob@ccc.com', 'Male', 2, 3),
(9, 'Steve', 'R', 'Wilson', 'Steve@aaa.com', 'Male', 1, 2),
(10, 'Pam', 'P', 'Broker', 'Pam@bbb.com', 'Female', 2, 1);

select * from employeee
select SUBSTRING(email,CHARINDEX('@',email)+1,LEN(email)-charindex('@',email))
AS EmailDomain,count(email) as total
from employeee
Group by SUBSTRING(email,CHARINDEX('@',email)+1,LEN(email)-charindex('@',email))

select replicate('TALHA',3)
select space (5)

-- Create the tblDateTime table with various datetime-related columns
CREATE TABLE tblDateTime (
    c_time TIME,
    c_date DATE,
    c_smalldatetime SMALLDATETIME,
    c_datetime DATETIME,
    c_datetime2 DATETIME2,
    c_datetimeoffset DATETIMEOFFSET
);

-- Select all data from the table
SELECT * FROM tblDateTime;

-- Insert current date and time into the table using GETDATE()
INSERT INTO tblDateTime VALUES (
    GETDATE(), GETDATE(), GETDATE(), GETDATE(), GETDATE(), GETDATE()
);

-- Update a specific datetimeoffset value
UPDATE tblDateTime
SET c_datetimeoffset = '2012-08-31 21:34:36.9200000 +10:00'
WHERE c_datetimeoffset = '2012-08-31 21:34:36.9200000 +00:00';

-- Demonstrate usage of built-in date and time functions
SELECT GETDATE(), 'GETDATE()';
SELECT CURRENT_TIMESTAMP, 'CURRENT_TIMESTAMP';
SELECT SYSDATETIME(), 'SYSDATETIME()';
SELECT SYSDATETIMEOFFSET(), 'SYSDATETIMEOFFSET()';
SELECT GETUTCDATE(), 'GETUTCDATE()';

-- ISDATE examples: checks whether the input is a valid date
SELECT ISDATE('PRAGIM');  -- Returns 0
SELECT ISDATE(GETDATE());  -- Returns 1
SELECT ISDATE('2012-08-31 21:02:04.167');  -- Returns 1
SELECT ISDATE('2012-09-01 11:34:21.1918447');  -- Returns 0 (precision not supported by ISDATE in some SQL versions)

-- DAY function examples: extracts the day from a date
SELECT DAY(GETDATE());  -- Returns current day of the month
SELECT DAY('01/31/2012');  -- Returns 31

-- MONTH function examples: extracts the month from a date
SELECT MONTH(GETDATE());  -- Returns current month number
SELECT MONTH('01/31/2012');  -- Returns 1

-- DATENAME examples: retrieves the name of a date part (e.g., day, month, weekday)
SELECT DATENAME(DAY, '2012-09-30 12:43:46.837');         -- Returns 30
SELECT DATENAME(WEEKDAY, '2012-09-30 12:43:46.837');     -- Returns Sunday
SELECT DATENAME(MONTH, '2012-09-30 12:43:46.837');       -- Returns September

-- Create the tbl table
CREATE TABLE tblemployeee (
    Id INT,
    Name VARCHAR(50),
    DateOfBirth DATETIME
);

-- Insert data into tbl
INSERT INTO tblemployeee(Id, Name, DateOfBirth) VALUES
(1, 'Sam', '1980-12-30 00:00:00.000'),
(2, 'Pam', '1982-09-01 12:02:36.260'),
(3, 'John', '1985-08-22 12:03:30.370'),
(4, 'Sara', '1979-11-29 12:59:30.670');

-- Example combining several functions from a table called tblEmployees
SELECT 
    Name,
    DateOfBirth,
    DATENAME(WEEKDAY, DateOfBirth) AS [Day],
    MONTH(DateOfBirth) AS MonthNumber,
    DATENAME(MONTH, DateOfBirth) AS [MonthName],
    YEAR(DateOfBirth) AS [Year] 
    --DATENAME (YEAR,DateOfBirth) AS [YEAR]
FROM tblEmployeee;

-- Returns the numeric weekday (e.g., 1 for Sunday, 2 for Monday, etc.)
SELECT DATEPART(MONTH, '2012-08-30 19:45:31.793');

-- Returns the weekday name (e.g., Thursday)
SELECT DATENAME(MONTH, '2012-08-30 19:45:31.793');

-- Adds 20 days to the given date
SELECT DATEADD(DAY, 20, '2012-08-30 19:45:31.793');

-- Subtracts 20 days from the given date
SELECT DATEADD(DAY, -20, '2012-08-30 19:45:31.793');

-- Calculates the number of months between two dates
SELECT DATEDIFF(MONTH, '2005-11-30', '2006-01-31');

-- Calculates the number of days between two dates
SELECT DATEDIFF(DAY, '2005-11-30', '2006-01-31');
GO
alter function fncomputeage (@DOB DATETIME)
RETURNS NVARCHAR(50)
AS
BEGIN
DECLARE  @tempdate datetime, @years int, @months int, @days int
-- Initialize temp date with DOB
SELECT @tempdate = @DOB

-- Calculate years difference, adjusting if birthday hasn't occurred yet this year
SELECT @years = DATEDIFF(YEAR, @tempdate, GETDATE()) -
    CASE
        WHEN (MONTH(@DOB) > MONTH(GETDATE())) OR 
             (MONTH(@DOB) = MONTH(GETDATE()) AND DAY(@DOB) > DAY(GETDATE()))
        THEN 1 ELSE 0
    END

-- Advance temp date by calculated years
SELECT @tempdate = DATEADD(YEAR, @years, @tempdate)

-- Calculate months difference, adjusting if day hasn't occurred yet this month
SELECT @months = DATEDIFF(MONTH, @tempdate, GETDATE()) -
    CASE 
        WHEN DAY(@DOB) > DAY(GETDATE())
        THEN 1 ELSE 0
    END

-- Advance temp date by calculated months
SELECT @tempdate = DATEADD(MONTH, @months, @tempdate)

-- Calculate remaining days difference
SELECT @days = DATEDIFF(DAY, @tempdate, GETDATE())

-- Final result
Declare @age nvarchar(40)
 set @age=cast(@years as nvarchar (10)) + 'YEARS' + cast(@months as nvarchar (10)) + 'MONTHS' + cast(@days as nvarchar (10)) + 'DAYS OLD' 
 return @age
END

select id,Name,DateofBirth,dbo.fncomputeage(Dateofbirth) as age  from tblemployeee
select * from tblemployeee

-- Retrieve all columns from the tblEmployees table
SELECT * FROM tblemployeee;

-- Convert DateofBirth to nvarchar using CAST
SELECT Id, Name, DateofBirth, CAST(DateofBirth AS nvarchar) AS ConvertedDOB
FROM tblEmployeee;

-- Convert DateofBirth to nvarchar using CONVERT
SELECT Id, Name, DateofBirth, CONVERT(nvarchar, DateofBirth) AS ConvertedDOB
FROM tblEmployeee;

-- Convert DateofBirth to nvarchar with style 103 (dd/mm/yyyy)
SELECT Id, Name, DateofBirth, CONVERT(nvarchar, DateofBirth, 103) AS ConvertedDOB
FROM tblEmployeee;

-- Just extract the date part from the current DateTime
SELECT CONVERT(varchar(10), GETDATE(), 101); -- Output: mm/dd/yyyy

-- Use the DATE datatype (SQL Server 2008+)
SELECT CAST(GETDATE() AS DATE);      -- Output: yyyy-mm-dd
SELECT CONVERT(DATE, GETDATE());     -- Output: yyyy-mm-dd

-- Concatenate Name and Id into a single column
SELECT Id, Name, Name + ' - ' + CAST(Id AS nvarchar) AS [Name-Id]
FROM tblEmployeee;

-- Create the table
CREATE TABLE tblRegisteredUsers (
    Id INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100),
    RegisteredDate DATETIME
);

-- Insert the data
INSERT INTO tblRegisteredUsers (Id, Name, Email, RegisteredDate) VALUES
(1, 'John', 'j@j.com', '2012-08-24 11:04:30.230'),
(2, 'Sam', 's@s.com', '2012-08-25 14:04:29.780'),
(3, 'Todd', 't@t.com', '2012-08-25 15:04:30.730'),
(4, 'Mary', 'm@m.com', '2012-08-25 15:05:30.730'),
(5, 'Sunil', 'sunil@s.com', '2012-08-24 15:04:30.780'),
(6, 'Mike', 'mike@m.com', '2012-08-26 15:05:30.330');

select * from tblRegisteredUsers

select cast(registereddate as date)as registereddate ,count(id ) as total 
from tblRegisteredUsers
group by cast(RegisteredDate as date)


-- Get the absolute value of a number
SELECT ABS(-101.5);  -- Returns: 101.5

-- Round up to the nearest integer
SELECT CEILING(15.2);     -- Returns: 16
SELECT CEILING(-15.2);    -- Returns: -15

-- Round down to the nearest integer
SELECT FLOOR(15.2);       -- Returns: 15
SELECT FLOOR(-15.2);      -- Returns: -16

-- Raise 2 to the power of 3
SELECT POWER(2, 3);       -- Returns: 8

-- Square a number
SELECT SQUARE(9);         -- Returns: 81

-- Find the square root of a number
SELECT SQRT(81);          -- Returns: 9

-- Generate a fixed pseudo-random number (using seed)
SELECT RAND(1);

-- Generate a random number between 0–99
SELECT FLOOR(RAND() * 100);

-- Loop to print 9 random numbers between 0–99
DECLARE @Counter INT;
SET @Counter = 1;
WHILE (@Counter < 10)
BEGIN
    PRINT FLOOR(RAND() * 100);
    SET @Counter = @Counter + 1;
END

-- Round to 2 decimal places
SELECT ROUND(850.556, 2);  -- Returns: 850.56

select SQUARE(3)
select GETDATE()

Go
alter Function calculateage(@DOB DATE)
Returns int 
AS
BEGIN
DECLARE @Age INT;
SET @Age = DATEDIFF(YEAR, @DOB, GETDATE()) -
    CASE
        WHEN (MONTH(@DOB) > MONTH(GETDATE())) OR
             (MONTH(@DOB) = MONTH(GETDATE()) AND DAY(@DOB) > DAY(GETDATE()))
        THEN 1
        ELSE 0
    END;

Return @age
END

select sample.dbo.calculateage('2006-01-31')

Select * from tblemployeee
select id,name,dateofbirth,dbo.calculateage(Dateofbirth) as age from tblemployeee

create procedure  calculatetheage
@DOB DATE
AS
BEGIN
DECLARE @Age INT;
SET @Age = DATEDIFF(YEAR, @DOB, GETDATE()) -
    CASE
        WHEN (MONTH(@DOB) > MONTH(GETDATE())) OR
             (MONTH(@DOB) = MONTH(GETDATE()) AND DAY(@DOB) > DAY(GETDATE()))
        THEN 1
        ELSE 0
    END;
Select @age
END

exec calculatetheage '2006/01/31'

-- Create the tblEmployees table
CREATE TABLE tblEmployees (
    Id INT PRIMARY KEY,
    Name VARCHAR(100),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    DepartmentId INT
);

-- Insert sample employee records
INSERT INTO tblEmployees (Id, Name, DateOfBirth, Gender, DepartmentId) VALUES
(1, 'Ali', '1990-05-15', 'Male', 101),
(2, 'Ayesha', '1992-08-22', 'Female', 102),
(3, 'Usman', '1988-03-10', 'Male', 101),
(4, 'Zara', '1995-12-05', 'Female', 103),
(5, 'Hassan', '1991-07-19', 'Male', 102);

-- Create a table-valued function to get employees filtered by gender
CREATE FUNCTION fn_EmployeesByGender (@Gender NVARCHAR(10))
RETURNS TABLE
AS
RETURN 
(
    SELECT Id, Name, DateOfBirth, Gender, DepartmentId
    FROM tblEmployees
    WHERE Gender = @Gender
);

-- Example usage
use [sample]
GO
SELECT * FROM fn_EmployeesByGender('Male');

select* from tblemployeee

create function ILTVF_getemployees()
returns table
as
return select id,name,cast(dateofbirth as date) as DOB from tblemployeee

select * from dbo.ILTVF_getemployees()

create function MVTVF_getemployees()
returns @table table (id int,name nvarchar(20),DOB Date)
as
begin
 insert into @table
 select id,name,cast(Dateofbirth as Date) from tblemployeee
 return
 end

 select * from dbo.MVTVF_getemployees()

 update ILTVF_getemployees() SET Name='Talha' where id = 1
 update MVTVF_getemployees() SET Name ='AHMAD' where id = 2

 select * from tblEmployees

 alter function fn_getnamebyid(@id int)
 returns nvarchar(20)
 with schemabinding
 as
 begin
    return (select Name  from dbo.tblEmployees where id=@id)
end

select dbo.fn_getnamebyid(1)

sp_helptext fn_getnamebyid

drop table tblEmployees

-- Create a temporary table
CREATE TABLE #PersonDetails (
    Id INT,
    Name NVARCHAR(20)
);

-- Insert values into the temporary table
INSERT INTO #PersonDetails VALUES (1, 'Mike');
INSERT INTO #PersonDetails VALUES (2, 'John');
INSERT INTO #PersonDetails VALUES (3, 'Todd');

delete from #PersonDetails

-- Select all data from the temporary table
SELECT * FROM #PersonDetails;

-- Check the name of the temp table in tempdb (to see its internal name)
SELECT name 
FROM tempdb..sysobjects 
WHERE name LIKE '#PersonDetails%';

truncate table #persondetails
drop table #PersonDetails
create proc temporarytempdb
as
begin
CREATE TABLE #PersonDetails (
    Id INT,
    Name NVARCHAR(20)
);

-- Insert values into the temporary table
INSERT INTO #PersonDetails VALUES (1, 'Mike');
INSERT INTO #PersonDetails VALUES (2, 'John');
INSERT INTO #PersonDetails VALUES (3, 'Todd');

end

exec temporarytempdb
select * from #PersonDetails

-- Create the Employees table
CREATE TABLE Employees2 (
    Id INT,
    Name VARCHAR(50),
    Salary INT,
    Gender VARCHAR(10)
);

-- Insert the records into the table
INSERT INTO Employees2 (Id, Name, Salary, Gender) VALUES
(1, 'Sam', 2500, 'Male'),
(2, 'Pam', 6500, 'Female'),
(3, 'John', 4500, 'Male'),
(4, 'Sara', 5500, 'Female'),
(5, 'Todd', 3100, 'Male');

select * from Employees2
create index IX_employees2_salary 
on employees2 (salary ASC)

drop index employees2.IX_employees2_salary

-- Create the tblEmployee table
CREATE TABLE tblEmployee3
(
    [Id] INT PRIMARY KEY,
    [Name] NVARCHAR(50),
    [Salary] INT,
    [Gender] NVARCHAR(10),
    [City] NVARCHAR(50)
);


-- Check existing indexes on tblEmployee
EXECUTE sp_helpindex tblEmployee3;

-- Insert records into tblEmployee
INSERT INTO tblEmployee3 VALUES (3, 'John', 4500, 'Male', 'New York');
INSERT INTO tblEmployee3 VALUES (1, 'Sam', 2500, 'Male', 'London');
INSERT INTO tblEmployee3 VALUES (4, 'Sara', 5500, 'Female', 'Tokyo');
INSERT INTO tblEmployee3 VALUES (5, 'Todd', 3100, 'Male', 'Toronto');
INSERT INTO tblEmployee3 VALUES (2, 'Pam', 6500, 'Female', 'Sydney');

-- View all data in the table
SELECT * FROM tblEmployee3;

-- Create a clustered index on Gender (descending) and Salary (ascending)
CREATE CLUSTERED INDEX IX_tblEmployee_Gender_Salary
ON tblEmployee3 (Gender DESC, Salary ASC);

drop index tblemplyee3.IX_tblEmployee_Gender_Salary

-- Create a non-clustered index on Name
CREATE NONCLUSTERED INDEX IX_tblEmployee_Name
ON tblEmployee (Name);

-- Confirm table contents again
SELECT * FROM tblEmployee;

-- Create tblDepartment table
CREATE TABLE tbl_Department (
    DeptId INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

-- Insert data into tblDepartment
INSERT INTO tbl_Department (DeptId, DeptName) VALUES
(1, 'IT'),
(2, 'Payroll'),
(3, 'HR'),
(4, 'Admin');

-- Create tblEmployee table
CREATE TABLE tbl_Employee (
    Id INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary INT,
    Gender VARCHAR(10),
    DepartmentId INT,
    FOREIGN KEY (DepartmentId) REFERENCES tbl_Department(DeptId)
);

-- Insert data into tblEmployee
INSERT INTO tbl_Employee (Id, Name, Salary, Gender, DepartmentId) VALUES
(1, 'John', 5000, 'Male', 3),
(2, 'Mike', 3400, 'Male', 2),
(3, 'Pam', 6000, 'Female', 1),
(4, 'Todd', 4800, 'Male', 4),
(5, 'Sara', 3200, 'Female', 1),
(6, 'Ben', 4800, 'Male', 3);

-- View contents of both tables
SELECT * FROM tbl_Department;
SELECT * FROM tbl_Employee;

-- Join both tables to display employee and department info
create view vwenployeesbydepartment
as
SELECT Id, Name, Salary, Gender, DeptName
FROM tbl_Employee
JOIN tbl_Department
ON tbl_Employee.DepartmentId = tbl_Department.DeptId;

select * from vwenployeesbydepartment
sp_helptext vwenployeesbydepartment

create view vwitemployees
as
SELECT Id, Name, Salary, Gender, DeptName
FROM tbl_Employee
JOIN tbl_Department
ON tbl_Employee.DepartmentId = tbl_Department.DeptId
where tbl_department.deptName='IT';

select * from vwitemployees

create view vwsummarizeddata
as
select deptName,count(id) as [total employees]
from tbl_employee
join tbl_department
on tbl_employee.departmentid=tbl_department.deptid
group by Deptname

select * from vwsummarizeddata

-- Create tblEmployee table
CREATE TABLE tblEmployee4 (
    Id INT PRIMARY KEY,
    Name NVARCHAR(50),
    Salary INT,
    Gender NVARCHAR(10),
    DepartmentId INT
);

-- Create tblEmployeeAudit table
CREATE TABLE tblEmployeeAudit (
    AuditId INT IDENTITY(1,1) PRIMARY KEY,
    AuditValues NVARCHAR(255)
);

-- Create trigger to log inserts into tblEmployee
go
create TRIGGER tr_tblEmployee4_ForInsert
ON tblEmployee4
FOR INSERT
AS
BEGIN
    DECLARE @Id INT;
    SELECT @Id = Id FROM inserted;

    INSERT INTO tblEmployeeAudit
    VALUES (
        'New employee with Id = ' + CAST(@Id AS NVARCHAR(5)) +
        ' is added at ' + CAST(GETDATE() AS NVARCHAR(20))
    );
END;

-- Insert records into tblEmployee
INSERT INTO tblEmployee4 (Id, Name, Salary, Gender, DepartmentId) VALUES (1, 'John', 5000, 'Male', 3);
INSERT INTO tblEmployee4 (Id, Name, Salary, Gender, DepartmentId) VALUES (2, 'Mike', 3400, 'Male', 2);
INSERT INTO tblEmployee4 (Id, Name, Salary, Gender, DepartmentId) VALUES (3, 'Pam', 6000, 'Female', 1);
INSERT INTO tblEmployee4 (Id, Name, Salary, Gender, DepartmentId) VALUES (4, 'Sara', 2900, 'Female', 4);
INSERT INTO tblEmployee4 (Id, Name, Salary, Gender, DepartmentId) VALUES (5, 'Ben', 4000, 'Male', 3);

INSERT INTO tblEmployee4 (Id, Name, Salary, Gender, DepartmentId) VALUES (9, 'AHL', 4000,'MALE' ,2);

-- Retrieve data from tblEmployee
SELECT * FROM tblEmployee4;

-- Retrieve data from tblEmployeeAudit
SELECT * FROM tblEmployeeAudit;

-- Trigger to log deletion events
CREATE TRIGGER tr_tblEmployee4_ForDelete
ON tblEmployee4
FOR DELETE
AS
BEGIN
    DECLARE @Id INT;
    SELECT @Id = Id FROM deleted;

    INSERT INTO tblEmployeeAudit (AuditValues)
    VALUES (
        'An existing employee with Id = ' + CAST(@Id AS NVARCHAR(5)) + ' is deleted'
    );
END;

-- Example delete operation
DELETE FROM tblEmployee4 WHERE Id = 2;

-- View audit log
SELECT * FROM tblEmployeeAudit;

-- Modify or create the update trigger
ALTER TRIGGER tr_tblEmployee_ForUpdate
ON tblEmployee4
FOR UPDATE
AS
BEGIN
    DECLARE @Id INT;
    DECLARE @OldName NVARCHAR(20), @NewName NVARCHAR(20);
    DECLARE @OldSalary INT, @NewSalary INT;
    DECLARE @OldGender NVARCHAR(20), @NewGender NVARCHAR(20);
    DECLARE @OldDeptId INT, @NewDeptId INT;
    DECLARE @AuditString NVARCHAR(1000);

    -- Store inserted rows in a temporary table
    SELECT * INTO #TempTable FROM inserted;

    WHILE EXISTS (SELECT Id FROM #TempTable)
    BEGIN
        SET @AuditString = '';

        SELECT TOP 1
            @Id = Id,
            @NewName = Name,
            @NewGender = Gender,
            @NewSalary = Salary,
            @NewDeptId = DepartmentId
        FROM #TempTable;

        SELECT
            @OldName = Name,
            @OldGender = Gender,
            @OldSalary = Salary,
            @OldDeptId = DepartmentId
        FROM deleted
        WHERE Id = @Id;

        -- Build audit string comparing old vs. new values
        IF @OldName <> @NewName
            SET @AuditString = @AuditString + ' Name changed from ' + @OldName + ' to ' + @NewName;
        IF @OldGender <> @NewGender
            SET @AuditString = @AuditString + ' Gender changed from ' + @OldGender + ' to ' + @NewGender;
        IF @OldSalary <> @NewSalary
            SET @AuditString = @AuditString + ' Salary changed from ' + CAST(@OldSalary AS NVARCHAR) + ' to ' + CAST(@NewSalary AS NVARCHAR);
        IF @OldDeptId <> @NewDeptId
            SET @AuditString = @AuditString + ' DepartmentId changed from ' + CAST(@OldDeptId AS NVARCHAR) + ' to ' + CAST(@NewDeptId AS NVARCHAR);

        -- Insert change summary into audit table
        IF (@AuditString <> '')
        BEGIN
            INSERT INTO tblEmployeeAudit (AuditValues)
            VALUES ('Employee with Id = ' + CAST(@Id AS NVARCHAR) + ' is modified. ' + @AuditString);
        END

        -- Remove the processed record
        DELETE FROM #TempTable WHERE Id = @Id;
    END
END;

