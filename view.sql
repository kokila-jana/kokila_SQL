elect emp.emp_name,dept.dept_name
from emp
cross join dept on emp.dept_id;


select * from emp_details;
use company;

create view emp as select * from emp_details;

select * from emp;

select * from emp_details where salary >50000;

create view sal as select * from emp_details where salary >50000;

select * from sal;
set sql_safe_updates=0;
update  sal  set salary=80000 where emp_id=18;
use livewire;
select * from customers;

select * from dept;

select salary from customers where SALARY>5000;

select * from customers where salary  not in
(select salary from customers where SALARY>5000);

select address from customers where  address="delhi";
select * from emp;
select d.deptno,dname from  dept d where  not exists
( select deptno from emp e where e.deptno=d.deptno );

select * from emp where deptno=30;

select sal from emp where deptno=30;
select ename,sal from emp where sal > any(select sal from emp where deptno=30);
