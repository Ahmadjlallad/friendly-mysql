# simple example
use thriftshop;
-- change delimiter
DELIMITER //
create procedure sp_selectAllInventory()
begin select * from inventory;
end //
DELIMITER ;
call sp_selectAllInventory;
use sloppyjoes;

DELIMITER //
create procedure sp_staffOrdersServed()
begin select staff_id, count(order_id) as order_served
    from customer_orders group by staff_id;
end //
delimiter ;
call sp_staffOrdersServed;
show tables;
select * from staff;
create trigger after_order_served
    after insert on customer_orders
    for each row
    update staff set orders_served = orders_served + 1
    where staff_id = NEW.staff_id;
insert into customer_orders values (21, 1, 10.98);