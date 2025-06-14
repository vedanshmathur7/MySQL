use vedansh;

create table education (
edu_id int primary key,
full_name varchar (50) not null,
grad_year int not null,
program varchar (50) not null
);

insert into education values
(1, 'Ankit Sharma', 2023, 'B.Tech CSE'),
(2, 'Priya Mehta', 2022, 'B.Tech EE'),
(3, 'Rohan Gupta', 2023, 'B.Tech ME'),
(4, 'Sneha Reddy', 2024, 'B.Tech CSE'),
(5, 'Aman Verma', 2022, 'B.Tech CE');

insert into clubs values
(1, 'Coding Club', 'Ankit Sharma', 2022),
(2, 'Dance Club', 'Sneha Reddy', 2023),
(3, 'Robotics Club', 'Rohan Gupta', 2022),
(4, 'Music Club', 'Aman Verma', 2021);


insert into students (student_id, full_name, reg_no, batch, passing_year) values
(1, 'Ankit Sharma', 'REG2020CSE001', '2020', 2024),
(2, 'Priya Mehta', 'REG2019EE003', '2019', 2023),
(3, 'Rohan Gupta', 'REG2020ME002', '2020', 2024),
(4, 'Sneha Reddy', 'REG2021CSE007', '2021', 2025),
(5, 'Aman Verma', 'REG2019CE005', '2019', 2023),
(6, 'Nikita Jain', 'REG2020ECE008', '2020', 2024),
(7, 'Deepak Joshi', 'REG2018ME009', '2018', 2022);

-- select * from students

select s.full_name, e.grad_year, e.program
from students as s
join education as e 
on s.full_name = e.full_name;

select s.*
from students s
left join education e
on s.full_name = e.full_name
where e.edu_id is null;

select s.full_name, c.club_name
from students s
inner join clubs c
on s.full_name = c.president_name;

select 