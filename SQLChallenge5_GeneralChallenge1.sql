/*
=========================================================================
Tutorial from Udemy: The Complete SQL Bootcamp 2020: Go From Zero to Hero
Utilizing PostgreSQL, pgAdmin, and a given database file to operate on.
=========================================================================
*/

/*
Challenge 5 Pt 1:
How many payment transactions were greater than $5.00?
*/
SELECT COUNT (*) FROM payment
	WHERE amount > 5.00;
  
/*
Challenge 5 Pt 2:
How many actors have a first name that starts with the letter P?
*/
SELECT COUNT(*) FROM actor
	WHERE first_name LIKE 'P%';
  
/*
Challenge 5 Pt 3:
How many unique districts are our customers from?
*/
SELECT COUNT(DISTINCT district) FROM address;

/*
Challenge 5 Pt 4:
Retrieve the list of names for those distinct districts from the previous question.
*/
SELECT DISTINCT district FROM address;

/*
Challenge 5 Pt 5:
How many films have a rating of R and a replacement cost between $5 and $15?
*/
SELECT COUNT(*) FROM film
	WHERE rating = 'R'
	AND replacement_cost BETWEEN 5 AND 15;
  
/*
Challenge 5 Pt 6:
How many films have the word 'Truman' somewhere in the title?
*/
SELECT COUNT(*) FROM film
	WHERE title LIKE '%Truman%';