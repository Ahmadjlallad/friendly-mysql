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
    FOREIGN KEY (customer_id) references customers (id)
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
# test for false fk
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/06/06', 33.67, 98);

# join

# working with join cross join implicit join
select * from customers, orders;
# implicit inner join
# inner join mining join them by the something they over lab with each over
select first_name, last_name, order_date, amount from customers, orders where customers.id = orders.customer_id;

# explicit inner join
select * from  customers join orders on customers.id = orders.customer_id;