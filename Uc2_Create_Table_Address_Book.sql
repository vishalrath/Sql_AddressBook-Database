--Uc1 Address book create database--
create database Address_Book;

-- uc2 create address book table--
create table Address_Book(First_Name varchar(20), Last_Name varchar(20), Address varchar(250),City varchar(50),State varchar(100),Zip_Code int, phone bigint, Email varchar(50));

select * from Address_Book;