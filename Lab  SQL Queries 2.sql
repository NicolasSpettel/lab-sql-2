use sakila;
-- Select all the actors with the first name ‘Scarlett’.
select * from actor where first_name = 'Scarlett';

-- Select all the actors with the last name ‘Johansson’.
select * from actor where last_name = 'Johansson';

-- How many films (movies) are available for rent?
select count(*) as 'films (movies) available for rent'from film;

-- How many films have been rented?
select count(rental_id) as 'films rented' from rental;

-- What is the shortest and longest rental period?
select min(rental_duration) as' shortest rental period', max(rental_duration) as 'longest rental period' from film;
-- select * from film order by rental_duration asc limit 1;
-- select * from film order by rental_duration desc limit 1;

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select max(length) as max_duration, min(length) as min_duration from film;

-- What's the average movie duration?
select avg(length) as 'average movie duration' from film;

-- What's the average movie duration expressed in format (hours, minutes)?
select floor(avg(length)/60) as hours, floor(avg(length) - floor(avg(length)/60)*60) as minutes from film;

-- How many movies longer than 3 hours?
select count(*) as 'movies longer than 3 hours' from film where length > 180;

-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select CONCAT(UPPER(SUBSTRING(first_name,1,1)),LOWER(SUBSTRING(first_name,2))) as 'First Name', upper(last_name) as 'Last Name', concat(lower(first_name), '.', lower(last_name), '@sakilacustomer.org') as 'email' from customer;
-- this seems very complicated

-- What's the length of the longest film title?
select max(length(title)) as 'longest film title' from film;