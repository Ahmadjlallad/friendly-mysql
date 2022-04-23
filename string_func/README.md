# [string function in mysql](https://dev.mysql.com/doc/refman/8.0/en/string-functions.html)

## concat function

- concat function is used to concatenate two or more strings.

```sql
-- concat x column and y column
z = concat(x, y);
```

## CONCAT_WS function

- CONCAT_WS function is used to concatenate two or more strings with a separator.

```sql
-- concat x column and y column with a separator
z = concat_ws(sep, x, y);
```

## substring function

- substring function is used to extract a substring from a string.
- its like substring in javaScript

```sql
-- substring x column from 1 to 3
z = substring(x, 1, 3);
```

## REPLACE function

- REPLACE function is used to replace a substring in a string.

```sql
-- replace x column chosen text from x to replace auth A
z = replace(x, 'y', 'A');
```

## REVERSE function

- REVERSE function is used to reverse a string.

```sql
-- reverse x column
z = reverse(x);
```

## CHAR_LENGTH function

- CHAR_LENGTH function is used to get the length of a string.

```sql
-- get the length of x column
z = char_length(x);
```

## upper function

- upper function is used to convert a string to upper case.

```sql
-- convert x column to upper case
z = upper(x);
```

## LOWER function

- LOWER function is used to convert a string to lower case.

```sql
-- convert x column to lower case
z = lower(x);
```
