SELECT substring(title, 1, 10) as substring
from books;
SELECT CONCAT(substring(title, 1, 20), ' ', '...') as substring
from books;