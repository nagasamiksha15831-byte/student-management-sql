create database student_management;
USE student_management;

CREATE TABLE department
(dept_id INT PRIMARY KEY ,
dept_name VARCHAR(30)
);

CREATE TABLE student
(stu_id INT PRIMARY KEY,
sname varchar(25),
age INT,dept_id INT,
marks INT,
FOREIGN KEY(dept_id)REFERENCES department(dept_id));

INSERT INTO department VALUES
(1,'CSE'),
(2,'IT'),
(3,'ECE'),
(4,'MECH');

INSERT INTO student values
(11,'Arun',20,1,85),
(12,'Priya',19,2,90),
(13,'Karthik',20,1,78),
(14,'Divya',19,3,88),
(15,'Ragul',21,2,95),
(16,'Sneha',20,4,75);

select * from department;
select * from student;

-- INNER JOIN:retrieve student details along with their department name
select * from student s join department d
where s.dept_id=d.dept_id;

-- LEFT JOIN:returns all rows from the left and matching rows from right table
select * from student s LEFT JOIN department d 
 ON s.dept_id=d.dept_id;
 
-- FULL OUTER JOIN :returns all rows from both tables

-- find students who scored above average
select * from student s 
where marks>(select avg(marks) from student);

-- department wise student count using left join
select dept_name,count(stu_id) from department d LEFT JOIN student s 
ON s.dept_id=d.dept_id
group by dept_name;

-- rank students based on marks(highest first)
select sname,marks,dense_rank()over(order by marks desc)as student_rank from student;

-- assign unique number to each row
select sname,marks,row_number()over(order by stu_id)as row_no from student;
