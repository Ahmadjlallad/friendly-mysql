# case
```mysql
select case
           when stock_quantity between 0 and 50 then '*'
           when stock_quantity between 50 and 100 then '**'
           else '***'
           end as STOCK
from books;
```
when represent if statement
we can do if else
or just an else, and we have to say end

```mysql
select IF(released_year >= 2000, 'modern lit', '20th century Lite') as GENRE
from books;
```
we can use IF instead of when and else
if we have a case with only if and else