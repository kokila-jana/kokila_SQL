use livewire;
select * from emp;

drop procedure if exists get_emp1;
delimiter $$
create procedure get_emp1( in p_id varchar(25))
begin
select * from emp where ename=p_id;
end $$
delimiter //

call get_emp1("ward");

select * from emp;

drop function if exists get_sal;

delimiter //
create function get_sal(p_id int)
returns int
deterministic
begin
 declare salary int;
 select sal into salary from emp where empno=p_id;
 return salary;
 end //
 delimiter //
 
 select get_sal(7369);
 
 select * from emp1;
 alter table emp1 drop column age ;
 insert into emp1 values(12,"Jana",5000);

use livewire;
 
 delimiter //
 create trigger trig
 before insert on emp1
 for each row
 begin
 set new.salary=new.salary+500;
 end //
 delimiter //
 
 insert into emp1 values(4,"Mano",2500);
 selecat * from emp1;

create table emp1_audit(emp_id int,old_sal int,new_sal int,
action_time datetime);

delimiter //
create trigger changes
after update on emp1
for each row
begin
insert into emp1_audit value
(old.emp_id,old.salary,new.salary,now());
end //
delimiter //

select * from emp1;
set sql_safe_updates=0;
update emp1 set salary=10000 where name="Jana";

select * from emp1_audit;

alter table emp1 add column created_at datetime;

delimiter //
create trigger changes
after insert on emp1
for each row
begin
set new.created_at=now();
end //
delimiter //

insert into emp1 values(7,"sasi",11000,now());
select * from emp1;

create table student(id int auto_increment
 primary key, details JSON);
insert into student(details) values('{"name":"kokila","age":25}');
select * from student;

select details ->'$.age' from student;

select json_extract(details,'$.age') from student;

select json_object("name","kokila","age",25,"course","java");
