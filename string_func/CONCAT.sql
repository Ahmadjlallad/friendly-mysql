show TABLES;
DESC books;
-- 
SELECT CONCAT(author_fname, ' ', author_lname) AS full_name
FROM books;
-- concat_wt
SELECT CONCAT_WS('-', title, author_fname, author_lname)
from books;