# more select

## DISTINCT

- in my sql DISTINCT use to get the distinct values of a column or unique values

````sql

SELECT DISTINCT author_fname,
    author_lname
FROM books;

    ```
````

## order by

order ascending by DEFAULT

```sql
 -- short cut referee to author_lname
SELECT author_fname, author_lname
FROM books
ORDER BY 2 DESC
LIMIT 10;

-- short cut referee to author_lname and if two of theme clash
-- we can add second arg so sql will compere it with other
SELECT author_fname,
    author_lname
FROM books
ORDER BY 2,
    1 DESC
LIMIT 10;
```

## like

```sql
-- % wild card anything before and after an
-- da% get all the books that start with da
-- %da% get all the books that start & end with da
SELECT * FROM books where author_fname LIKE '%da%';

SELECT *
FROM books
where title like '%the%';
-- wild card is under score _ mining one digits
SELECT * FROM books where stock_quantity like '__';
```
