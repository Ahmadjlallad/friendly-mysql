select author_fname,
    author_lname,
    SUM(pages) as maxPages
from books
GROUP BY author_fname,
    author_lname
ORDER BY maxPages DESC;