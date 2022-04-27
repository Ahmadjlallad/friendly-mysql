-- % wild card anything before and after an
SELECT *
FROM books
where author_fname LIKE 'da%';
SELECT *
FROM books
where title like '%the%';
-- wild card is under score _ mining one digits
SELECT *
FROM books
where stock_quantity like '\__';
DESC books;
select title
from books
where title like "%stories%";
select title,
    pages
from books
ORDER BY pages DESC
LIMIT 1;
SELECT CONCAT_WS('-', title, released_year) as summary
FROM books
ORDER BY released_year DESC
LIMIT 3;
SELECT title,
    author_lname
FROM books
where author_lname like "% %";
SELECT title,
    released_year,
    stock_quantity
FROM books
ORDER BY stock_quantity
LIMIT 3;