/*
=========================================================================
Tutorial from Udemy: The Complete SQL Bootcamp 2020: Go From Zero to Hero
Utilizing PostgreSQL, pgAdmin, and a given database file to operate on.
=========================================================================
*/

/*
Challenge 8 Pt 1:
California sales tax laws have changed and we need to alert our customers to this through email.
What are the emails of the customers who live in California?
*/
SELECT district, email from address
	JOIN customer
	ON address.address_id = customer.address_id
	WHERE district = 'California';
 
 /*
Challenge 8 Pt 2:
A customer walks in and is a huge fan of the actor "Nick Wahlberg" and wants to know which movies he is in.
Get a list of all the movies "Nick Wahlberg" has been in.
*/
SELECT film.title, actor.first_name, actor.last_name
FROM film
INNER JOIN film_actor
	ON film.film_id = film_actor.film_id
INNER JOIN actor
	ON actor.actor_id = film_actor.actor_id
WHERE actor.first_name = 'Nick'
	AND actor.last_name = 'Wahlberg';
