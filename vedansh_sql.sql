select * from student;

insert into student (name, rollno, marks)
values 
('Vedansh', 240686, 56),
('Tanish', 240656, 89);

create table course (
id_no int primary key,
course varchar (50)
);

insert into course 
values
(240686, 'Maths'),
(240656, 'Science');

select * from course as c
inner join student as s
on s.rollno = c.id_no;


