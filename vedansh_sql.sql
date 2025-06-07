create database vedansh;
-- drop database vedansh;
create database if not exists vedansh ; 

use vedansh ;
create table rajesh (
st_id int primary key,
name varchar (100),
age int not null
);
insert into rajesh
values 
(1, 'Vedansh', 18),
(2, 'Tanish', 21);
select * from rajesh;