create table students
(
    id         int auto_increment primary key,
    first_name varchar(100)
);
create table papers
(
    id         int auto_increment primary key,
    title      varchar(100),
    grade      decimal(8, 2),
    student_id int,
    foreign key (student_id) references students (id) on DELETE CASCADE
);
INSERT INTO students (first_name)
VALUES ('Caleb'),
       ('Samantha'),
       ('Raj'),
       ('Carlos'),
       ('Lisa');

INSERT INTO papers (student_id, title, grade)
VALUES (1, 'My First Book Report', 60),
       (1, 'My Second Book Report', 75),
       (2, 'Russian Lit Through The Ages', 94),
       (2, 'De Montaigne and The Art of The Essay', 98),
       (4, 'Borges and Magical Realism', 89);
select first_name, title, grade
from students
         inner join papers on students.id = papers.student_id;
select first_name, title, grade
from students
         left join papers on students.id = papers.student_id;
select first_name, IFNULL(title, 'MISSING'), IFNULL(grade, 0)
from students
         left join papers on students.id = papers.student_id;
select first_name, IFNULL(avg(grade), 0) as 'Average'
from students
         left join papers p on students.id = p.student_id
group by students.id;
select first_name, IFNULL(avg(grade), 0) as Average, IF(avg(grade)>=75, 'PASSING', 'FALLING') as 'passing_status'
from students
         left join papers p on students.id = p.student_id
group by students.id;