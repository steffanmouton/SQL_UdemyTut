/*
=========================================================================
Tutorial from Udemy: The Complete SQL Bootcamp 2020: Go From Zero to Hero
Utilizing PostgreSQL, pgAdmin, and a given database file to operate on.
=========================================================================

Challenge 1:
We want to send out a promotional email to our existing customers.
We need to know their names and emails. 
*/

SELECT first_name, last_name, email 
	FROM customer;