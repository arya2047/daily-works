create database employees;
use employees;
select * from  [dbo].[cardata];
select * from[dbo].[cardata] where year=2014;

select * from[dbo].[cardata] where year < 2014;

select * from[dbo].[cardata] where year>2014;

select * from[dbo].[cardata] where year!=2014;
select distinct  Car_Name from [dbo].[cardata];
select distinct  Fuel_Type from [dbo].[cardata];
select distinct  * from [dbo].[cardata];
select count (year) from [dbo].[cardata];
select * from [dbo].[cardata] where Year between 2015 and 2025;
select * from [dbo].[cardata] where Fuel_Type in ('Petrol','CNG','Diesel');
select * from [dbo].[cardata];
--select * from [dbo].[cardata] where year =2015;
/* select * from [dbo].[cardata];
select * from [dbo].[cardata];*/
select * from [dbo].[cardata] where Fuel_Type='Petrol';

create table customers (
ID int primary key identity(100,1),
Name varchar(20) not null,
contactname varchar(50),
Address varchar(100),
postalcode char(6),
email varchar(100) unique,
joindate date default getdate(),
)
select * from [dbo].[customers];
