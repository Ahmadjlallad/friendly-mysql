use onlinelearningschool;

create table course_ratings_normalize
select rating_id, course_id, star_rating
from course_ratings;
select *
from course_ratings_normalize;

alter table course_ratings_normalize
    add primary key (rating_id),
    add foreign key (course_id) references courses (course_id);

select *
from courses;

select *
from course_ratings;

select *
from course_ratings_summaries;

select *
from courses
         inner join course_ratings_normalize normalize on normalize.course_id = courses.course_id;
select distinct *
from course_ratings