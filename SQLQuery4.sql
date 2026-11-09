
use [car];
select * from[dbo].[cardata];

create table employeesdetails(
ID int primary key identity(100,1),
name varchar(100) not null,
dept varchar(20) ,
salary int,
phone_number CHAR(10),
district varchar(20),
);
select* from[dbo].[employeesdetails];

insert into employeesdetails
values('anu','english',10000,9027343212,'wayanad'),
('angel','english',10500,9025647212,'wayanad'),
( ' ','commerce',38000,9089563445,'malapuram');


create table children(
id int  not null primary key,
name varchar(20),
age int
);
select * from[dbo].[kids];

create table parents(
id int not null,
address varchar (100),
phone char(10),
foreign key(id) references children(id)
);
insert into children 
values( 101 ,'arya' ,10),
(102 , 'ammu' ,17),
(103 , 'minnu' ,15);
select* from children; 
insert into parents
values(101,'calicut',9034253647);
select * from parents;

use car;
select * from [dbo].[cardata];
select * from [dbo].[cardata] order by Car_Name;
select * from [dbo].[cardata] order by Car_Name desc;
select * from [dbo].[cardata] order by year;
select * from [dbo].[cardata] order by Car_Name asc,year desc;
select * from [dbo].[cardata] where fuel_type = 'petrol' and year = 2015;
select * from [dbo].[cardata] where Fuel_Type='petrol' and (Car_Name like 'm%' or Car_Name like '%i');
select * from [dbo].[cardata] where fuel_type  not like 'm%' and year = 2015;
select * from [dbo].[cardata] where not fuel_type = 'petrol' and year = 2015;
select * from [dbo].[cardata] where year not between 2010 and 2015;
select 10 +2 as total;
select Selling_Price, Kms_Driven,
Selling_Price + Kms_Driven as total from [dbo].[cardata];
select * from [dbo].[cardata]where Car_Name like '[mdh]%';
select * from [dbo].[cardata]where Car_Name like '[^mdh]%';
select * from [dbo].[cardata]where Car_Name like '[a-d]%';