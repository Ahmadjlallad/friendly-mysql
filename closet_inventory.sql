create database shirts_db;
use shirts_db;
create table shirts(
    shirt_id int not null auto_increment,
    article varchar(150) not null,
    color varchar(150) not null,
    shirt_size varchar(150) not null,
    last_worn integer not null,
    primary key(shirt_id)
);
insert into shirts(article, color, shirt_size, last_worn)
values ('t-shirt', 'white', 'S', 10),
    ('t-shirt', 'green', 'S', 200),
    ('polo shirt', 'black', 'M', 10),
    ('tank top', 'blue', 'S', 50),
    ('t-shirt', 'pink', 'S', 0),
    ('polo shirt', 'red', 'M', 5),
    ('tank top', 'white', 'S', 200),
    ('tank top', 'blue', 'M', 15);
select article, color from shirts LIMIT 10;
select article, color, shirt_size, last_worn from shirts WHERE shirt_size = 'M' LIMIT 10;
UPDATE shirts set shirt_size = 'L' where article = "polo shirt";
UPDATE shirts set last_worn = 0 where last_worn = 15;
UPDATE shirts set color = 'off white', shirt_size = 'XS' where color = 'white';
SELECT * from shirts where color = 'off white';
DELETE FROM shirts where last_worn = 200;
DELETE FROM shirts where article = 'tank top';
DELETE FROM shirts;
DROP TABLE shirts;