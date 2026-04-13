select * from emp_details;
select salary, count(*) from emp_details group by salary;
use livewire1;
select * from info;
set sql_safe_updates=0;
update info set fees=13900 where name="mega";

select course, sum(fees) from info group by course;

select course,avg(fees) from info group by course;

select course,max(fees) from info group by course;
select max(fees) from info;
select * from info where fees= (select max(fees) from info);

select * from info order by name desc;
select date_format(now(),"%y:%m:%d")as date; 

use batch;
select * from weekend;
select extract(day from join_date) from weekend;

select extract(year from join_date) from weekend;

select date_format(join_date,'%Y.%m.%d') from weekend;
select now();
select date( now());
select time(now());
select datediff(now(),'2023-04-01') as experence;
select date_sub(now(), interval 27 year);
select length('hello') as len;
select name,length(name) from weekend group by name;
select upper(name) from weekend;
select lower(name) from weekend;
select concat(name," ",join_date) from weekend;
select char_length(name) from weekend;
select locate('i',name) from weekend;
select char(65);
select cast(char(65) as char);
select right("hello",3);

use batch;
create table constrain(id int auto_increment primary key,Name varchar(25) not null,
phone bigint unique,age int check(age>=18 and age<=35),status varchar(25) default 'active');

create table dept(dept_id int primary key,
dept_name varchar(25) unique);

insert into dept values(10,"IT"),(20,"HR"),(30,"Training"),
(40,"Maintance"),(50,"Sales");

select *  from dept;

create table emp(emp_id int primary key,
emp_name varchar(25), dept_id int, foreign key(dept_id)
references dept(dept_id));

insert into emp values(12,"Jana",10),(45,"Mano",20),(63,"Sasi",30),
(46,"Priya",40),(78,"Mega",40),(85,"Mahi",10);

select * from emp;
select *  from dept;

select emp.emp_name,dept.dept_name
from emp
inner join dept on emp.dept_id=dept.dept_id;

select emp.emp_name,dept.dept_name
from emp
left join dept on emp.dept_id=dept.dept_id
union 
select emp.emp_name,dept.dept_name
from emp
right join dept on emp.dept_id=dept.dept_id;
