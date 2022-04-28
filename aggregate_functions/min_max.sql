select MAX(released_year),
    MIN(released_year)
FROM books;
select MAX(pages),
    MIN(pages)
FROM books
GROUP BY pages;
-- we cant do select MAX(pages), pages FROM books;
-- so the resone for that is sql will get every thaning one by one
-- sub query its like javascript FUNCTION but its slow
select *
FROM books
where pages = (
        SELECT max(pages)
        FROM books
    );
-- or use order by and sort asc or desc
select *
FROM books
ORDER BY pages ASC
LIMIT 1;
select author_fname,
    author_lname,
    MIN(released_year),
    MAX(pages)
from books
GROUP BY author_fname,
    author_lname;