select avg(pages)
FROM books;
select author_fname,
    author_lname,
    avg(pages),
    AVG(released_year)
FROM books
GROUP BY author_fname,
    author_lname;
select COUNT(*)
FROM books;
FROM books
GROUP BY released_year;
select released_year,
    COUNT(*)
FROM books
GROUP BY released_year;
SELECT SUM(stock_quantity)
FROM books;
select CONCAT(author_fname, ' ', author_lname) as full_name,
    pages
FROM books
ORDER BY pages desc
LIMIT 1;
select released_year as 'year',
    COUNT(*) as '# Books',
    AVG(pages) as 'avg pages'
FROM books
GROUP BY released_year
ORDER BY released_year ASC;