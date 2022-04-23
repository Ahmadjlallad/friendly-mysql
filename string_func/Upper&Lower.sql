SELECT upper(author_fname),
    lower(author_lname)
from books;
SELECT REVERSE(
        upper('"Why does my cat look at me with such hatred?"')
    );
SELECT replace(CONCAT('I', ' ', 'like', ' ', 'cats'), ' ', '-');
- - replace every space to->
select replace(title, ' ', '->') as title
from books;
select upper(CONCAT(author_fname, ' ', author_lname)) as 'full name in caps'
from books;
DESC books;
SELECT CONCAT(substring(title, 1, 10), ' ...') as 'Short title',
    CONCAT(author_lname, ', ', author_fname) as author,
    CONCAT(stock_quantity, ' in stock') as quantity
from books;