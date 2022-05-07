# sql

## defiant types of language within sql

[types of language within sql](https://www.indeed.com/career-advice/career-development/database-languages)

| Type                 | exp                                 |
|----------------------|-------------------------------------|
| Data Definition L    | used to create and modified structure of database |
| Data Manipulation L | add modified create record from table|
| Data Query L         |Query , show, help, select|
| Data Control L       |used to grant or revoke permissions|
| Data Transaction L   |used to manage transaction|

## schema

schema === database

```mysql
create schema myFirstSchema default character set utf8;
```

## add or drop column in table

using alter table to add or drop column

```mysql
# add or drop column in table
alter table myFirstSchema.myFirstTable
    add column myFirstColumn int;
```

```mysql
select @@autocommit;

```

`@@autocommit` is a global variable that is set to 1 when the server is started.

- if I have off commit on every will be considered as a transaction or temporary table

If autocommit mode is enabled, each SQL statement forms a single transaction on its own. By default, MySQL starts the
session for each new connection with autocommit enabled, so MySQL does a commit after each SQL statement if that
statement did not return an error.

### rollback

```mysql
# rollback
rollback;
```

this will roll back session last commit

## transaction

smiler to delete but delete part of data manipulation mining we can roll back

but transaction its ddl Data Definition Language we can't roll back
