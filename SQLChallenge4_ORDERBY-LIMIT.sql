/*
=========================================================================
Tutorial from Udemy: The Complete SQL Bootcamp 2020: Go From Zero to Hero
Utilizing PostgreSQL, pgAdmin, and a given database file to operate on.
=========================================================================
*/

/*
Challenge 4 Pt 1:
We want to reward our first 10 paying customers.
What are the customer ids of the first 10 customers who created a payment?
*/

SELECT customer_id, payment_date FROM payment
	ORDER BY payment_date ASC
	LIMIT 10;
	
/*
Challenge 4 Pt 2:
A customer wants to quickly rent a video to watch over their short lunch break.
What are the titles of the 5 shortest runtime movies?
*/

SELECT title,length FROM film
	ORDER BY length ASC
	LIMIT 5;
	
/* 
Challenge 4 Pt 2 Bonus Question:
If the previous customer can watch any movie that is 50 minutes or less in run time, how many options does she have?
*/
SELECT COUNT (*) FROM film
	WHERE length <= 50;
	
/* ANSWER: 37 */