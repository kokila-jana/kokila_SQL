create database afternoon;
use afternoon;
create table student(id int,name varchar(25),course varchar(30));
describe stud;
rename table student to stud;
alter table stud add column fees float;
alter table stud modify column fees int;
alter table stud rename column id  to s_id;
alter table stud drop column fees;

insert into stud value(12,"Mohan Raj","Python Fullstack"),
(45,"Mohan Kumar","Python Fullstack"),
(89,"Mukesh prabhu","Python Fullstack"),
(78,"Kokila","Java Fullstack"),
(96,"Sasi Kumar","Java"),(36,"Kalai","C");
select * from stud;
set sql_safe_updates=0;
update stud  set course="dip in Java" where s_id=96;
delete from stud where s_id=36;
delete from stud where course="Python Fullstack" limit 1;

select * from stud where course="Python Fullstack";
select name from stud;
select course from stud;
