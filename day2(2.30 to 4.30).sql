create table emp(e_id int,name varchar(20),dept varchar(25),salary float);
insert into emp values(12,"Mohan Raj","Fullstack developer",100000),
(45,"Mohan Kumar","Backend developer",200000),(78,"Mukesh","Frontend developer",200000),
(96,"Kokila","Technical Trainer",20000);


select * from emp;
set sql_safe_updates=0;
update emp set salary=salary+5000 where e_id=12;
select * from emp where salary >=200000;
select * from emp where salary =20000;
select * from emp where salary >100000 and salary<200000;
alter table emp add column join_date date;

update emp set join_date="2023-04-01" where e_id=96;
select * from emp where name like 'M%';
select * from emp where name like '%a';
select * from emp where name like '__h%';

select * from emp where dept in("Fullstack developer","HR","Trinee");
select * from emp where salary between 100000 and 200000;
select salary, count(*) from emp group by salary;
insert into emp values(2,"Sasi kumar","Fullstack developer",100000,"2024-06-23");
select dept,sum(salary) from emp group by dept; 
select dept,avg(salary) from emp group by dept; 
select dept,max(salary) from emp group by dept; 
select dept,min(salary) from emp group by dept; 
select* from emp order by name;
select* from emp order by name desc;
select* from emp order by salary;
select* from emp order by e_id;

select * from emp;
select date_format(now(),"%Y-%M-%D") as today;
select date_format(now(),"%y-%m-%d") as today;
select extract(day from join_date) from emp;
select extract(month from join_date) from emp;
select extract(year from join_date) from emp;
select date_format(join_date,"%Y-%M-%D") from emp;
select now();
select date(now());
select time(now());
select datediff(curdate(),"2023-01-18") as dat;
select date_add(curdate(),interval 5 day) as dat;

select name,length(name)from emp group by name;
select upper(name) from emp;
select lower(name) from emp;
select concat(name,"@",dept) from emp;
select char_length(dept) from emp;
select locate("K",name) from emp;
select cast(char(65) as char);
select right(name,4)as num from emp;
