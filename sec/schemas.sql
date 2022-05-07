create schema myFirstSchema default character set UTF8MB4;
use myFirstSchema;
create table myFirstSchema.hello
(
    id int primary key auto_increment
);

# add
use thriftshop;
# using after to position your column
# this will make it after customer_purchase_id
alter table customer_purchases
    add column purchase_amount decimal(10, 2) after customer_purchase_id;
# at the end
alter table customer_purchases
    add column purchase_amount_two decimal(10, 2);
alter table customer_purchases
    drop purchase_amount_two;
select *
from customer_purchases;
# assignment
use candystore;
select *
from employees;
alter table employees
    drop hourly_wage;
alter table employees
    add avg_customer_rating decimal(10, 2);

# assignment
describe employees;
insert into employees(employee_id, first_name, last_name, hire_date, position)
values (7, 'Charles', 'Munger', '2020-3-15', 'clerks'),
        (8, 'Wiliam', 'Gates', '2020-3-15', 'clerks');
update employees set position = 'Clerk' where position = 'clerks';

select @@autocommit;
# transaction