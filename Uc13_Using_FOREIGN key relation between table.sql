--Uc1 Address book create database--
create database Address_Book;

-- uc2 create address book table--
create table Address_Book(First_Name varchar(20), Last_Name varchar(20), Address varchar(250),City varchar(50),State varchar(100),Zip_Code int, phone bigint, Email varchar(50));
;
select * from Address_Book

--uc3 insert Address book contact
insert into Address_Book1 values(101,'Vishal','Rathod','pusad','Washim','Maharastra',444404,7038762577,'vishalrathod7038@gmail.com');
insert into Address_Book1 values(002,'shashank','rao','pune','pune','Maharastra',123456,1235642333,'dagv@gmail.com');
insert into Address_Book1 values(003,'rakesh','jadhao','andheri','mumbai','Maharastra',456123,4567891236,'xyz@gmail.com');
insert into Address_Book1 values(004,'amol','chavan','nagpur','nagpur','Maharastra',445566,7569874231,'abc@gmail.com');
insert into Address_Book1 values(005,'Rahul','Pawar','Panji','Panaji','Goa',235566,7561274231,'abbshc@gmail.com');
select * from Address_Book1;

--uc4 upadate the existing person
 UPDATE Address_Book set First_Name ='Rajesh' where First_Name = 'Vishal' ;
  UPDATE Address_Book  set State ='Karnataka' where First_Name='rakesh' or First_Name='amol';
   UPDATE Address_Book  set Address ='bangalore' where First_Name='rakesh' or First_Name='amol';

--uc5 Delete a person contact
DELETE FROM Address_Book WHERE First_Name='amol';
select * from Address_Book;

-- uc6 retrive data city and state
select * from Address_Book where City='pune';
select * from Address_Book where State='Maharastra';



--uc7 count the city and state
select count (city) as Number_of_City from Address_Book;
select count (city) as Number_of_Employee, city  from Address_Book  group by city;
select count (State) as Number_of_State from Address_Book;
select count (State) as Number_of_Employee, State  from Address_Book  group by State;

--uc8 Arrenge alphabeticaly order
SELECT * FROM Address_Book ORDER BY First_Name;
SELECT * FROM Address_Book ORDER BY  City,First_Name;

--uc9 Add colum Family,friends, professional

alter table Address_Book Add Family varchar(20),Friends varchar(20), Profession varchar(50);

--uc 10 get number of contact person
select count (First_Name) as Number_of_ContactPerson from Address_Book;

-- uc11 Ability Add person details frein and family colum

  UPDATE Address_Book  set Family ='yes' where First_Name='rakesh' ;
    UPDATE Address_Book  set Friends ='yes' where First_Name='rakesh' ;
select * from Address_Book;

-- uc12


ALTER TABLE Address_Book ADD ID_Abook int primary key;

--create table Address_Book1(ID_Abook int primary key,First_Name varchar(20), Last_Name varchar(20), Address varchar(250),City varchar(50),State varchar(100),Zip_Code int, phone bigint, Email varchar(50));
--create table ContatctDetailsAbbok(Id int IDENTITY(1,1) Primary key,First_Name varchar(20), Last_Name varchar(20),ID_Abook int FOREIGN KEY REFERENCES Address_Book1(ID_Abook));
--create table  AddressDetailsAbook(Id int FOREIGN KEY REFERENCES ContatctDetailsAbbok(Id ), Address varchar,city varchar(20),State varchar(100),Zip_Code int Not null);
--create table  PersonContactDetailsAbook(Id int FOREIGN KEY REFERENCES ContatctDetailsAbbok(Id ), Mobile_Number int Not null,EmailId varchar(200), primary key(Mobile_Number,EmailId));

drop table Address_Book1;
create table Address_Book2(ID_Abook int primary key,AddressbookName varchar(50));
insert into Address_Book2 values(101,'ABC');
insert into Address_Book2 values(102,'Xyz');
insert into Address_Book2 values(103,'abc');
insert into Address_Book2 values(104,'sdg');
insert into Address_Book2 values(105,'hello');


drop table PersonContactDetailsAbook;
create table ContatctDetailsAbook(Id int IDENTITY(1,1) Primary key,First_Name varchar(20), Last_Name varchar(20),ID_Abook int FOREIGN KEY REFERENCES Address_Book2(ID_Abook));
insert into  ContatctDetailsAbook values('Vishal','Rathod',101);
insert into  ContatctDetailsAbook values('shashank','rao',102);
insert into  ContatctDetailsAbook values('rakesh','jadhao',103);
insert into  ContatctDetailsAbook values('amol','chavan',104);
insert into  ContatctDetailsAbook values('Rahul','Pawar',105);
select * from ContatctDetailsAbook;

create table  AddressDetailsAbook2( Address varchar(200),city varchar(20),State varchar(100),Zip_Code int Not null,Id int FOREIGN KEY REFERENCES ContatctDetailsAbook(Id));
insert into  AddressDetailsAbook2 values('pusad','Washim','Maharastra', 444404,1);
insert into  AddressDetailsAbook2 values('pune','pune','Maharastra',123456,2);
insert into  AddressDetailsAbook2 values('andheri','mumbai','Maharastra',456123,3);
insert into  AddressDetailsAbook2 values('nagpur','nagpur','Maharastra',445566,4);
insert into  AddressDetailsAbook2 values('Panji','Panaji','Goa',235566,5);

drop table ContatctDetailsAbook;

create table  PersonContactDetailsAbook2( Mobile_Number bigint Not null,EmailId varchar(200), primary key(Mobile_Number,EmailId),Id int FOREIGN KEY REFERENCES ContatctDetailsAbook(Id));
insert into PersonContactDetailsAbook2 values(7038762577,'Vishalrathod@gmail.com',1);
insert into PersonContactDetailsAbook2 values(1236547895,'rathod@gmail.com',2);
insert into PersonContactDetailsAbook2 values(564876231,'Vithod@gmail.com',3);
insert into PersonContactDetailsAbook2 values(1596423564,'gcfod@gmail.com',4);
insert into PersonContactDetailsAbook2 values(2013564213,'cfdff@gmail.com',5);

select count (city) as Number_of_City from AddressDetailsAbook2;
select count (city) as Number_of_Employee, city  from AddressDetailsAbook2  group by city;
select count (State) as Number_of_State from AddressDetailsAbook2;
select count (State) as Number_of_Employee, State  from AddressDetailsAbook2  group by State;

SELECT * FROM AddressDetailsAbook2 ORDER BY  City;

select count (First_Name) as Number_of_ContactPerson from ContatctDetailsAbook;