select * from Employee_payroll;
-- Table 1 Company Detail_Payroll 
create table CompanyDetail_Payroll(CompanyName varchar(200)Primary key);
insert into CompanyDetail_Payroll values('Bridgelabz');
insert into CompanyDetail_Payroll values('TCS');

-- Table 2 Employee Details_Payroll Details in payrol
create table EmployeeDetails_Payroll(Emp_ID int IDENTITY(1,1) primary key ,Name varchar(50),LastName varchar(50),Address varchar(200),City varchar(50),State varchar(50),CompanyName varchar(200) FOREIGN KEY REFERENCES CompanyDetail_Payroll(CompanyName));
select * from EmployeeDetails_Payroll;

insert into EmployeeDetails_Payroll values('Vishal','RAthod','pusad ','Washim','Maharstra','Bridgelabz');
insert into EmployeeDetails_Payroll values('Rakesh','Musale','Jalgao ','Jalgao','Maharstra','TCS');
insert into EmployeeDetails_Payroll values('Amol','Pawar','Andheri ','mumbai','Maharstra','Bridgelabz');
insert into EmployeeDetails_Payroll values('Avi','Jadhao','Banglore ','Banglore','Karnataka','Bridgelabz');
insert into EmployeeDetails_Payroll values('Seema','Rao','panji ','panji','Goa','TCS');

drop table DepartmentDetails_Payroll;
-- Table 3 Department Details in payrol
-- create table DepartmentDetails_Payroll(Dept_Id int ,Dept_Name varchar(20) ,CompanyName varchar(200) FOREIGN KEY REFERENCES CompanyDetail_Payroll(CompanyName));

-- Table 4 EmployeeDepartment Details_Payroll  in payrol
create table EmployeeDepartmentDetails_Payroll(Dept_Id int ,Dept_Name varchar(20) ,Emp_ID int FOREIGN KEY REFERENCES EmployeeDetails_Payroll(Emp_ID));
select * from EmployeeDepartmentDetails_Payroll;

insert into EmployeeDepartmentDetails_Payroll values(001,'DeveloperDept',1);
insert into EmployeeDepartmentDetails_Payroll values(002,'HR',2);
insert into EmployeeDepartmentDetails_Payroll values(001,'Admin',1);
insert into EmployeeDepartmentDetails_Payroll values(003,'HR',3);
insert into EmployeeDepartmentDetails_Payroll values(004,'Tester',4);
insert into EmployeeDepartmentDetails_Payroll values(003,'HRAdmin',3);
insert into EmployeeDepartmentDetails_Payroll values(001,'DeveloperDept',5);

-- Table 3 Sallary Payroll  Details  Table
select * from SalaryDetails_Payroll;

create table SalaryDetails_Payroll(Emp_ID int FOREIGN KEY REFERENCES EmployeeDetails_Payroll(Emp_ID),Basic_Pay int,Deduction int,Taxable_pay int,incomeTax int,Net_Pay int);
insert into SalaryDetails_Payroll values(1,10200,3000,1800,5000,30000,50000);
insert into SalaryDetails_Payroll values(2,10200,4100,1900,5720,38000,60000);
insert into SalaryDetails_Payroll values(3,3800,1235,800,3000,22000,30000);
insert into SalaryDetails_Payroll values(4,10000,3000,2800,7000,50000,70000);
insert into SalaryDetails_Payroll values(5,10200,3000,1800,4000,45000,56000);

-- uc11 count operation
select sum (Basic_pay) as Total_Sallary from SalaryDetails_Payroll;
select min (Basic_pay) as Minimum_Sallary from SalaryDetails_Payroll;
select max (Basic_pay) as Maximum_Sallary from SalaryDetails_Payroll;
select avg (Basic_pay) as Avarage_Sallary from Employee_Payroll1;
select count (Basic_pay) as Number_of_Employee from SalaryDetails_Payroll;
select count (Name) as EmployeeDetails_Payroll, Name  from EmployeeDetails_Payroll  group by Name;