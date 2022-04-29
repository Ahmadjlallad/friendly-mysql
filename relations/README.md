# relationship basics

- one to one it's not that use in real words
    - we can do a basic use info and one to one with another table have advance info
- one to many most popular
    - it's like one YouTube video have many reviews but reviews have one video
- many to many still common
    - it's like videos and youtubers

## one to many

```mysql
create table customers
(
    id         int auto_increment,
    first_name varchar(100),
    last_name  varchar(100),
    email      varchar(200) unique not null,
    primary key (id)
);
create table orders
(
    id          int auto_increment,
    order_date  DATE,
    amount      decimal(8, 2),
    customer_id int,
    primary key (id),
    FOREIGN KEY (customer_id) references customers (id)
);

```

- using `FOREIGN KEY (customer_id) references customers (id)`
    - we reference the column from another table this will bond the two tables and records

## join

- inner join mining join them by the something they over lab with each over
    - explicit
    - implicit inner join

```mysql
    select *
    from customers
             join orders on customers.id = orders.customer_id;
## implicit inner join
select first_name, last_name, order_date, amount
from customers,
     orders
where customers.id = orders.customer_id;

```