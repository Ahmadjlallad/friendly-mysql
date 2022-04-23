SELECT CONCAT(
        author_lname,
        ' is ',
        CHAR_LENGTH(author_lname),
        ' CHARACTER LONG'
    )
from books;