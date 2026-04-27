create table student(id int auto_increment
 primary key, details JSON);
insert into student(details) values('{"name":"kokila","age":25}');
select * from student;

select details ->'$.age' from student;

select json_extract(details,'$.age') from student;

select json_object("name","kokila","age",25,"course","java");

use livewire;

select json_insert('{"name":"kokila"}','$.age',26);

select json_replace('{"name":"kokila","age":26}','$.age',28);

select json_array(1,2,65,965,69,966);
select json_object('Marks',json_array(78,96,88,96));

select json_extract('{"Marks":[78,96,88,98]}','$.Marks[2]');

select json_length('{"Marks":[78,96,88,98]}','$.Marks');

create table std_xml(id int auto_increment primary key,data text);
insert into std_xml(data) values('<student><name>kokila</name>
<age>26</age><course>Java</course></student>');
select * from std_xml;
select extractvalue(data,'//age') as namec from std_xml;

DELIMITER //
DROP PROCEDURE IF EXISTS demo_cur;
CREATE PROCEDURE demo_cur()
BEGIN
  DECLARE done INT DEFAULT FALSE;
  DECLARE student_name VARCHAR(50);
  DECLARE cur CURSOR FOR 
    SELECT name FROM student2026;
  DECLARE CONTINUE HANDLER FOR NOT FOUND 
    SET done = TRUE;
  OPEN cur;
  read_loop: LOOP
    FETCH cur INTO student_name;
    IF done THEN 
      LEAVE read_loop; 
    END IF;                                                                                                               To call:
    SELECT student_name;                                                                                   CALL demo_cur();
  END LOOP;
  CLOSE cur;
END //
DELIMITER ;

select * from emp;

select ename,job, row_number() over(partition by job order by sal)
 as number from emp; 
 
 select ename,job, rank() over( order by sal desc)
 as number from emp; 
 
 select ename,job, dense_rank() over( order by sal desc)
 as number from emp;

 
 select * from (select ename,job,sal, row_number() over
(partition by job order by sal desc)
 as number from emp)a where number<2;
