# stored procedures
- mysql gives us the ability to store and call frequently used queries
- on the server these are then referred to as `procedures` or commonly known as `stored procedures`
- benefits include:
- more efficient query writing and query performance
- less code to write
- it's like functions but stored in the database
- run with `call procedure_name()`
```mysql
# first change DELIMITER so that we can use stored procedures
DELIMITER //
create procedure sp_selectAllInventory()
begin 
    # after begin we can write our query
    select * from inventory;
    # and we end the procedure
end //
DELIMITER ;
```