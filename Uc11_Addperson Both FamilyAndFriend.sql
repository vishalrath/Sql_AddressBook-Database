--Uc1 Address book create database--
create database Address_Book;

-- uc2 create address book table--
create table Address_Book(First_Name varchar(20), Last_Name varchar(20), Address varchar(250),City varchar(50),State varchar(100),Zip_Code int, phone bigint, Email varchar(50));
;
select * from Address_Book

--uc3 insert Address book contact
insert into Address_Book values('Vishal','Rathod','pusad','Washim','Maharastra',444404,7038762577,'vishalrathod7038@gmail.com');
insert into Address_Book values('shashank','rao','pune','pune','Maharastra',123456,1235642333,'dagv@gmail.com');
insert into Address_Book values('rakesh','jadhao','andheri','mumbai','Maharastra',456123,4567891236,'xyz@gmail.com');
insert into Address_Book values('amol','chavan','nagpur','nagpur','Maharastra',445566,7569874231,'abc@gmail.com');
insert into Address_Book values('Rahul','Pawar','Panji','Panaji','Goa',235566,7561274231,'abbshc@gmail.com');
select * from Address_Book;

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