/*
=========================================================================
Tutorial from Udemy: The Complete SQL Bootcamp 2020: Go From Zero to Hero
Utilizing PostgreSQL, pgAdmin, and a given database file to operate on.
=========================================================================
*/

/*
Challenge 7 Pt 1:
We are launching a platinum service for our most loyal customers. 
We will assign plat status to customers that have had 40 or more transaction payments.
What customer_ids are eligible for platinum status?
*/
SELECT customer_id, COUNT(amount) FROM payment
	GROUP BY customer_id 
	HAVING COUNT(amount) >= 40;
  
/*
Challenge 7 Pt 2:
What are the customer ids of customers who have more than $100 in payment transactions with our staff_id number 2?
*/
SELECT customer_id, SUM(amount) from payment
  WHERE staff_id = 2
  GROUP BY customer_id
  HAVING SUM(amount) > 100;
