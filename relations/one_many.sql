# simple example
create database one_many;
use one_many;
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
    FOREIGN KEY (customer_id) references customers (id) on delete cascade
);

INSERT INTO customers (first_name, last_name, email)
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');

INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);
# sec for false fk
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/06/06', 33.67, 98);

# join

# working with join cross join implicit join
select *
from customers,
     orders;
# implicit inner join
# inner join mining join them by the something they over lab with each over
select first_name, last_name, order_date, amount
from customers,
     orders
where customers.id = orders.customer_id;

# explicit inner join
select *
from customers
         join orders on customers.id = orders.customer_id;
select *
from customers
         join orders on customers.id = orders.customer_id
group by orders.customer_id;

# left join
# get every thing from the left table and match inner section cross
# if there is not any order or record it will fill it with null
select first_name, last_name, IFNULL(sum(amount), 0) as 'total_spent'
from customers
         LEFT JOIN orders on customers.id = orders.customer_id
group by customers.id
order by total_spent;
# left join revives of the left join
select *
from orders
         right join customers on customers.id = orders.customer_id;
