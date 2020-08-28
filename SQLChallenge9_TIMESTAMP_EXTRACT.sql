/*
=========================================================================
Tutorial from Udemy: The Complete SQL Bootcamp 2020: Go From Zero to Hero
Utilizing PostgreSQL, pgAdmin, and a given database file to operate on.
=========================================================================
*/

/*
Challenge 9 Pt 1:
During which months did payments occur?
Format your answer to return back the full month name.
*/
SELECT DISTINCT(TO_CHAR(payment_date, 'MONTH'))
FROM payment;

/*
Challenge 9 Pt 2:
How many payments occurred on a Monday?
*/
SELECT COUNT(*) FROM payment
WHERE EXTRACT(dow FROM payment_date) = 1;

/* 
My notes: from PostgreSQL documentation - dow is the keyword for Day of Week. Used with EXTRACT.
*/
