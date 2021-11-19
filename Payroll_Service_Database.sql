-- uc1 creating database
create database Employee_payroll;

--uc 2 creating Employee_Payroll1
create table Employee_Payroll1( id_num int IDENTITY(1,1) primary key, Name varchar(20),Sallary float,StartDate date);

--uc3 insert value Employee_Payroll1
insert into Employee_Payroll1 values('Vishal',50000,'1-11-2021');
insert into Employee_Payroll1 values('shital',23000.20,'2-09-2016');
insert into Employee_Payroll1 values('Bill',12000.33,'2-11-2018');
insert into Employee_Payroll1 values('Meena',5500.200,'1-03-2019' ,'F');
insert into Employee_Payroll1 values('Charli',456123,'2-02-2020');

--uc4  Retrive all data in Employee_Payroll1 table
select * from Employee_Payroll1;

--uc5 retrive sallry data 
 SELECT Basic_pay, StartDate FROM Employee_Payroll1
WHERE Name = 'Bill';

--uc6 add one row in table Gender
ALTER TABLE Employee_Payroll1
ADD gender varchar(20);

--uc7 calculate sum, avg, min, max ,count and number of male female employee in table
 UPDATE Employee_Payroll1 SET gender ='F' where name = 'shital' ;
 SELECT SUM(Basic_pay) FROM employee_payroll1
WHERE gender = 'F' GROUP BY gender;
 SELECT SUM(Basic_pay) FROM employee_payroll1
WHERE gender = 'M' GROUP BY gender;


select * from Employee_Payroll1
select sum (Basic_pay) as Total_Sallary from Employee_Payroll1;
select min (Basic_pay) as Minimum_Sallary from Employee_Payroll1;
select max (Basic_pay) as Maximum_Sallary from Employee_Payroll1;
select avg (Basic_pay) as Avarage_Sallary from Employee_Payroll1;
select count (Basic_pay) as Number_of_Employee from Employee_Payroll1;
select count (Basic_pay) as Number_of_Employee, gender  from Employee_Payroll1  group by gender;
--uc8
ALTER TABLE Employee_Payroll1 ADD phone bigint;

ALTER TABLE Employee_Payroll1 ADD Address varchar(200) default'pune';
ALTER TABLE Employee_Payroll1 ADD Department varchar(200) not null default'HR';

--uc9
ALTER TABLE Employee_Payroll1 ADD Deduction bigint, Taxable_pay float, IncomeTax_pay float,Net_Pay float;
Exec sp_rename 'Employee_Payroll1.Sallary','Basic_pay','COLUMN';

--uc10
select * from Employee_Payroll1 where Name ='shital';




