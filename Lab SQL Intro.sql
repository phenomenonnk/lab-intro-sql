-- 1. 
-- Use sakila database
use sakila;

-- 2.
-- Get all the data from tables actor, film and customer.
select * from actor;
 
select * from film;

select * from customer;

-- or we can get every data in one query
select * from actor, film, customer;

-- 3. 
-- Get film titles.
select title from sakila.film;

-- 4
 /* Get unique list of film languages under the alias language. Note that we are not asking you to obtain the language per each film, 
-- but this is a good time to think about how you might get that information in the future.*/
select distinct name as language from sakila.language;

-- or in one row
select group_concat(distinct name) as language from language;

-- 5
-- 5.1 Find out how many stores does the company have?
select count(distinct store_id) as "quantity of stores" from sakila.store; 
-- or
select count(store_id) as "quantity of stores" from sakila.store; 

-- 5.2 
-- Find out how many employees staff does the company have?
select count(staff_id) as "quantity of employees" from sakila.staff;

-- 5.3 
-- Return a list of employee first names only?
select first_name from staff where staff_id in (select distinct staff_id from staff);
-- or
select first_name from sakila.staff
