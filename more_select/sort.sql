-- order BY
SELECT author_lname
FROM books
ORDER BY author_lname;
SELECT *
FROM books
ORDER BY author_fname DESC;
-- order asinding by DEFAULT
SELECT *
FROM books
ORDER BY released_year DESC
LIMIT 10;
-- short cut refare to author_lname and if two of tham clash
-- we can add second arg so sql will comper it with other
SELECT author_fname,
    author_lname
FROM books
ORDER BY 2,
    1 DESC
LIMIT 10;