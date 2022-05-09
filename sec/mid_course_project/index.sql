use mavenmoviesmini;
show tables;
select distinct *
from inventory_non_normalized
where store_id = 2;
create table film_norm
select distinct film_id, title, description, release_year, rental_rate, rating
from inventory_non_normalized;
alter table film_norm
    add primary key (film_id);

select *
from film_norm;

create table store_norm
select distinct store_id, store_city, store_district, store_address, store_manager_first_name, store_manager_last_name
from inventory_non_normalized;
alter table store_norm
    add primary key (store_id);

select *
from store_norm;

create table inventory_norm
select film_id, store_id, inventory_id
from inventory_non_normalized;
alter table inventory_norm
    add primary key (inventory_id),
    add foreign key (store_id) references store_norm (store_id),
    add foreign key (film_id) references film_norm(film_id);
