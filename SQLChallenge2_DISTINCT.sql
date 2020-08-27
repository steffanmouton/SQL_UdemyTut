/*
=========================================================================
Tutorial from Udemy: The Complete SQL Bootcamp 2020: Go From Zero to Hero
Utilizing PostgreSQL, pgAdmin, and a given database file to operate on.
=========================================================================

Challenge 2:
We have an Australian customer that is not familiar with our US movie rating system.
Use the DISTINCT keyword to find all the unique movie ratings in the database.
*/

SELECT DISTINCT(rating) 
  FROM film;
  