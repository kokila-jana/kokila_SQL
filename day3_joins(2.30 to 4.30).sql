use kokila;
show tables;
create table stud(s_id int primary key,name varchar(25)
 unique,course varchar(25) not null);
 insert into stud value(1,"Mohan","Python Fs"),
 (2,"Mukesh","Java FS"),(3,"Azahr","MERN stack"),
 (4,"Kokila","Java");
 
  insert into stud value(5,"Sasi","Python Fs");
 select * from stud;
 
 create table course(c_id int primary key,c_name varchar(25),
 fees int,s_id int, foreign key(s_id )
 references stud(s_id));
 
 
 insert  into course values(101,"Python FS",36400,1),
 (102,"Java FS",36400,2),(103,"MERN stack",36900,3);
 
 select * from course;

select stud.name,stud.course,course.fees
from stud
inner join course
on course.s_id=stud.s_id; 

select stud.name,stud.course,course.fees
from stud
left join course
on course.s_id=stud.s_id;

select stud.name,stud.course,course.fees
from stud
right join course
on course.s_id=stud.s_id;



select stud.name,stud.course,course.fees,course.c_id
from stud
left join course
on course.s_id=stud.s_id
union
select stud.name,stud.course,course.fees,course.c_id
from stud
right join course
on course.s_id=stud.s_id;

select s1.name,s2.course
from stud s1
join stud s2
where s1.course=s2.course
and s1.s_id<s2.s_id;

select stud.name,course.c_name
from stud
cross join course;

select stud.name,stud.course,course.fees,course.c_id
from stud
left join course
on course.s_id=stud.s_id
union all
select stud.name,stud.course,course.fees,course.c_id
from stud
right join course
on course.s_id=stud.s_id;

CREATE TABLE CUSTOMERS(
ID INT NOT NULL,
NAME VARCHAR (20) NOT NULL,
AGE INT NOT NULL,
ADDRESS CHAR (25) ,
SALARY DECIMAL (18, 2),
PRIMARY KEY (ID));

INSERT INTO CUSTOMERS VALUES(1, 'Ramesh', 32, 'Ahmedabad',
2000.00 ),(2, 'Khilan', 25, 'Delhi', 1500.00 ),(3, 'Kaushik', 23, 'Kota',
2000.00 ),(4, 'Chaitali', 25, 'Mumbai', 6500.00 ),(5, 'Hardik', 27, 'Bhopal',
8500.00 ),(6, 'Komal', 22, 'Hyderabad', 4500.00 ),(7, 'Muffy', 24, 'Indore',
10000.00 );

select * from customers;
create view cust as select * from customers;
select * from cust;
 create view low_salary as select * from customers where salary<5000;
select* from low_salary;

set sql_safe_updates=0;
update low_salary set salary=1800 where age=25;
