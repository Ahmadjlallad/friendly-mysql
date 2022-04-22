CREATE TABLE cats 
( 
cat_id INT NOT NULL AUTO_INCREMENT, 
name   VARCHAR(100), 
breed  VARCHAR(100), 
age    INT, 
PRIMARY KEY (cat_id) 
); 
DESC cats; 

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
('Cindy', 'Maine Coon', 10),
('Dumbledore', 'Maine Coon', 11),
('Egg', 'Persian', 4),
('Misty', 'Tabby', 13),
('George Michael', 'Ragdoll', 9),
('Jackson', 'Sphynx', 7);
use cats;
update cats set age = 14 where name = 'misty';
update cats set name = "jack" where name = 'Jackson';
update cats set breed = 'British Shorthiar' where name = 'ringo';
update cats set age = 12 where breed = 'Maine Coon';
-- ----------------------------- delete ------------------------------------------------------- --
delete from cats where  name = 'egg';
select * from cats;
-- delete from cats; delete all cats table but not the table
delete from cats where age = 4;
delete from cats where age = cat_id;
delete from cats;