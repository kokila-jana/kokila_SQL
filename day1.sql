create database School;
use School;
create table Staff(id int,Name varchar(25),Gender varchar(7),
Phone bigint,subject varchar(25),salary float,age smallint);
rename table Staff to Staff_details;
describe Staff_details;
alter table Staff_details drop column Gender;
alter table Staff_details add column experience int;
alter table Staff_details modify column subject varchar(30);
alter table Staff_details rename column Phone to mobile_no;

insert into Staff_details values(1,"Hari",7896541230,"English",15000,
25,1);
insert into Staff_details values(2,"Janani",8965412370,"Maths",15000,
27,3),(3,"Keerthi",9876541231,"Tamil",15000,27,3),(4,"Mounika",6985741203,
"Science",12000,21,0),(5,"Priya",7418529063,"Social",12000,21,0),
(6,"Praveen",9638520147,"Hindi",13000,27,5);
select * from Staff_details;
set sql_safe_updates=0;
delete from Staff_details where name="Hari";
delete from Staff_details where experience=0 limit 1;
update Staff_details set salary=15000 where name="Priya";

select * from Staff_details where subject="Tamil";
select subject from Staff_details;
 
use livewire1;
select * from info;
truncate table Staff_details;
drop table Staff_details;

drop database School;

use company;
select * from emp_details;
select 5+6;
update emp_details set salary=salary+5000 where name="Mano";

select * from emp_details where salary!=50000;

select 5^1;
select * from emp_details where salary between 50000 and 100000;

select * from emp_details where salary>50000 and salary<100000;
select * from emp_details where name like "%_a";
select * from emp_details where name like "%n_";
select * from emp_details where name like "M%";

use employee;
select * from departments;
select * from departments where dept_NAME 
in ("HR","IT","FINANCE");

select * from emp_details;
select salary, count(*) from emp_details group by salary;
