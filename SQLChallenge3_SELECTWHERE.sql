/*
=========================================================================
Tutorial from Udemy: The Complete SQL Bootcamp 2020: Go From Zero to Hero
Utilizing PostgreSQL, pgAdmin, and a given database file to operate on.
=========================================================================
*/

/*
Challenge 3 - Pt 1:
A customer forgot their wallet at our store! What is the email for the customer with the name Nancy Thomas?
*/

SELECT first_name, last_name, email FROM customer
	WHERE first_name = 'Nancy'
	AND last_name = 'Thomas';
  
/*
Challenge 3 - Pt 2:
A customer wants to know what the movie "Outlaw Hanky" is about.
Could you give them the description for the movie "Outlaw Hanky"?
*/

SELECT title, description FROM film
	WHERE title = 'Outlaw Hanky';

/*
Challenge 3 - Pt 3:
A customer is late on their movie return, and we've mailed them a letter to their address at "259 Ipoh Drive". We should also call them. =
Can you get the phone number for this customer?
*/

SELECT address, phone FROM address
	WHERE address = '259 Ipoh Drive';