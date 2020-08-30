/*
=========================================================================
Tutorial from Udemy: The Complete SQL Bootcamp 2020: Go From Zero to Hero
Utilizing PostgreSQL, pgAdmin, and a given database file to operate on.
=========================================================================
*/

/*
We want to know and compare the various amounts of films we have per movie rating.
Use CASE and the dvdrental database to re-create this table:

r  | pg  | pg13
----------------
195| 194 | 223
*/

SELECT 
SUM(CASE rating
		WHEN 'R' THEN 1
		ELSE 0
	END) AS r,
SUM(CASE rating
		WHEN 'PG' THEN 1
		ELSE 0
	END) AS pg,
SUM(CASE rating
		WHEN 'PG-13' THEN 1
		ELSE 0
	END) AS pg13
FROM film;
