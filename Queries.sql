create database revision;
use  revision;
create table hyd(id int unique,name varchar(67)  not null,emailid varchar(89) ,location varchar(78), phoneno bigint); 
insert into hyd values(102,"bunnny","bunnyi@gmail.com","secunderabad",6784794687);
select*from hyd;
describe hyd;
select *from hyd where id=101;
update hyd set name="honey" where id=102;
create table student (id int primary key ,name varchar(67) not null ,age int check(age>=18),role varchar(78),location varchar(89) not null,mobile bigint unique);
insert into student  values(100001,"shinchan",21,"ds","japan",90787890898);
select *from student;
delete from  student where name="shinzu";
create table course(id int,name varchar(56));
select *from course;
drop table course;
truncate course;
-- alter used tho modify the structure  of table
alter table student  add column gender varchar(78);
update student set gender="male";
alter table student modify   age varchar(78);
alter table student rename column  location to address;
alter table   student add column email varchar(78) not null after mobile;
update student set email="vaishu@gmail.comm";
alter table student drop column  role;
desc student;
-- like operators search the patterns
select*from  student where name like "n%";
 select *from student where name like "%n";
 select *from student  where name like  "%a%";
 select *from student where id like "%1";
 select *from student where name like "%h__";
 -- Oreder  by  sort the result in asc  or desc
 select *from student order by name asc;
 select *from  student where name like "%a%" order by age desc;
 -- Pagination  used to fetch the subset of rows frrom larger dataset
 select *from student limit 5 offset 2;
 select *from student ;
 -- Comparision operators =,!=,>,<,>=,<=(AND,OR,NOT)
 select*from student where id=100001 or id=100003 ;
 select *from student where id!=100001;
 select *from student where name="shinchan" and age>=18 and gender="male";
 -- IN,BETWEEN operators
 -- IN is used to check the value is present in table
--  BETWEEN is used to check the that present between the range
select *from student where address in ("japan","hyd");
select *from student where address="japan" or address="hyd";
select *from student  where age>=18 and age<30;
select *from student where age between 18 and 30;
-- Distinct it gives unique values
select distinct  address from student;
select distinct email from student;
-- String functions in sql
-- concat --->Adding 2 or more strings
select concat(name," - ",address) from  student ; 
select concat("vaishnavi","pagadala");
-- Length retturns the  length of the string and CHAR_LEN()
select length("vaishnavi");
select  length(name) from student;
-- Substring retrieves  the selected portion in the string
select substring("hello world",5,4);
select substring(name,1,6) from student;
-- Upper,Lower
select upper(name) from student;
select lower(name) from student;
-- Trim removes the startin g and ending spaces
select trim("  Hello  ");
-- Replace it replaces the string
select replace("hello world","world","vaishu");
update   student set  age=replace(age,45,40);
select*from student;
-- left,right ----->returns the left part with particular number of chars
select left("hello",4);
select right("vaishu",4);
-- Nummerical functions
select round(467.68766,2);
select floor(677.6978);
select  abs(-687.68979);
select  ceil(344.42334);
select  mod(10,3);-- gives the remainder 
-- Date and Time funcs
select now();
select curdate();
select curtime();
alter table student  add column date varchar(67) not null;
update student set date="2026-11-29";
select*from student;
update student set  date=date_format(date,"%d %m %y");
-- control flow funcs
-- if
select if(5>3 ,"true","false");
select if(age<30,"valid","invalid") from student;
-- case
select case
		when 5>3 then 'great'
        when 3>5 then 'small'
        else 'equal'
        end;
        -- Methods
   select dayname("2025-09-16");   
   select dayofmonth("2025-09-16");
   select dayofmonth("2025-09-16");
   select month("2025-09-08");
   select monthname("2025-09-08");
-- aggregation funcs ---->combining multiple rowws of data into a single result
-- Count
select age, count(age)from student where age>18 group by age;
select *from student;
-- Sum
select  sum(age) from student  where age=40 ;
select sum(id) from student where age=40 group by  age;
-- Avg
select avg(age) from student where age=40 group by age;
select avg(id) from student  where age=40 group by age;
-- Min & Max
select min(age),max(age),count(*) from student ;
-- Group by ,having and alias
select name,sum(age) as age from student group by name having sum(age)>25;
select name,sum(age) as age from student group by name having sum(age)>25;
-- Joins ------------>used to combine the tables
-- Inner join
create table department(id int primary key,dept_name varchar(56),strength int not null);
insert into department values (1, "cse",400);
select * from department;
create table stud(id int ,name varchar(89),age int,dept_name varchar(89));
insert into stud values(103,"vaishu",32,"cse");
select*from stud;
select *from department inner join  stud on department.dept_name=stud.dept_name;
select * from department left join stud on department.dept_name=stud.dept_name;
select * from department right join stud on department.dept_name=stud.dept_name;
select *from department cross join stud ;
-- foreign key
create table departments(dept_id int primary key ,name varchar(89));
insert into departments values(1001,"cse");
select *from departments;
create table employees(id int ,name varchar(78),dept_id int ,foreign key(dept_id) references departments(dept_id) on delete cascade on update cascade )
select * from employees;
-- blob
create table images  (img_name varchar(78),image longblob);
insert into images values ("1","C:\\ProgramData\\MySQL\\MySQL Server 8.0");
select *from images;
-- subqueries
-- normalization 
use revision;


 
 