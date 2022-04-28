select COUNT(*) as number_of_books
from books;
select COUNT(DISTINCT author_fname) as number_of_books
from books;
select COUNT(DISTINCT author_fname, author_fname) as number_of_books
from books;
select COUNT(title) as number_of_the
from books
where title like '%the%';