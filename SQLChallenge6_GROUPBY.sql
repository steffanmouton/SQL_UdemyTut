/*
=========================================================================
Tutorial from Udemy: The Complete SQL Bootcamp 2020: Go From Zero to Hero
Utilizing PostgreSQL, pgAdmin, and a given database file to operate on.
=========================================================================
*/

/*
Challenge 6 Pt 1:
We have two staff members, with Staff IDs 1 and 2. We want to give a bonus to the member that handled the greater number of payments.
How many payments did each staff member handle and who gets the bonus?
*/
SELECT staff_id, COUNT(amount) from payment
  	GROUP BY staff_id;

/*
Challenge 6 Pt 2:
Corporate HQ is conducting a study on the relationship between replacecost and a movie MPAA rating.
What is the average replacement cost per MPAA rating?
*/
SELECT rating, ROUND(AVG(replacement_cost), 2) from film
  	GROUP BY rating
  	ORDER BY AVG(replacement_cost) DESC;
  
/*
Challenge 6 pt 3:
We are running a promotion to reward our top 5 customers with coupons.
What are the customer ids of the top 5 customers by total spent?
*/
SELECT customer_id, SUM(amount) from payment
	GROUP BY customer_id
	ORDER BY SUM(amount) DESC
	LIMIT 5;