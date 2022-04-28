select title,
    author_fname
FROM books
GROUP BY author_lname;
-- it will Group tham in suber columns so that count will COUNT() the inner COLUMN
select author_fname,
    author_lname,
    COUNT(*)
FROM books
GROUP BY author_lname,
    author_fname;
select *
from books
GROUP BY released_year;