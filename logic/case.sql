select title,
       released_year,
       case
           when released_year >= 2000 then 'modern lit'
           else '20th century Lite'
           end as GENRE
from books;

select title,
       released_year,
       IF(released_year >= 2000, 'modern lit', '20th century Lite') as GENRE
from books;
select title,
       stock_quantity,
       case
           when stock_quantity <= 50 then '*'
           when stock_quantity <= 100 then '**'
           else '***'
           end as STOCK
from books;
select count(*), title, concat(author_fname, ' ', author_lname)
from books
where author_lname in ('Eggers', 'Chabon');
# group by author_fname, author_lname;
select author_lname
from books
where author_lname like 's%'
   or author_lname like 'c%';
select title,
       author_lname,
       case
           when title like '%stories%'
               then 'Short Stories'
           when title like '%just kids%' or title like '%A Heartbreaking Work%'
               then 'Memoir'
           else 'Novel'
           end as Type
from books;
select title, author_lname,
       IF(count(*) > 1, concat(count(*),' ', 'books'), concat(count(*),' ', 'book')) as 'COUNT'
       from books
group by author_fname, author_lname;