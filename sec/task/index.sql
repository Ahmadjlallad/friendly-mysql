use mavenfuzzyfactorymini;

create table products (product_id int auto_increment,
                        created_at Datetime,
                        product_name varchar(255),
                        primary key (product_id));
create schema maven_bear_builders;
use maven_bear_builders;
create table order_item_refunds(order_id int);
create table order_item(
    order_name varchar(255)
);
desc order_item;
alter table order_item add order_item_id int add