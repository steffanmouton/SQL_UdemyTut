/*
=========================================================================
Tutorial from Udemy: The Complete SQL Bootcamp 2020: Go From Zero to Hero
Utilizing PostgreSQL, pgAdmin, and a given database file to operate on.
=========================================================================
*/

/*
=================
ASSESSMENT TEST 2
=================
*/

/*
Q1:
How can you retrieve all the information from the cd.facilities table?
*/
SELECT * FROM cd.facilities;

/*
Q2:
You want to print out a list of all the facilities and their cost to members. 
How would you retrieve a list of only facility names and costs?
*/
SELECT name, membercost FROM cd.facilities;

/*
Q3:
How can you produce a list of facilities that charge a fee to members?
*/
SELECT * FROM cd.facilities
WHERE membercost != 0;

/*
Q4:
How can you produce a list of facilities that charge a fee to members, and that fee is less than 1/50th of the monthly maintenance cost?
Return the facid, facility name, member cost, and monthly maintenance of the facilities.
*/
SELECT facid, name, membercost, monthlymaintenance FROM cd.facilities
WHERE membercost != 0 
	AND (SELECT membercost < monthlymaintenance/50);

/*
Q5:
How can you produce a list of all facilities with the word Tennis in their name?
*/
SELECT * from cd.facilities
WHERE name LIKE '%Tennis%';

/*
Q6:
How can you retrieve the details of facilities with ID 1 and 5?
Try to do it without using the OR operator.
*/
SELECT * from cd.facilities
WHERE facid IN (1,5);

/*
Q7:
How can you produce a list of memebers who joined after the start of Sept 2012?
Return the memid, surname, firstname, joindate of the members in question.

NOTE: I tried two solutions and both seemed to work so I will put them both here.
*/
SELECT * from cd.members
WHERE joindate > '2012-09-01';

SELECT * from cd.members
WHERE joindate BETWEEN '2012-09-01' AND CURRENT_DATE;


/*
Q8:
How can you produce an ordered list of the first 10 surnames in the members table? The list must not contain duplicates.
NOTE: Prompt does not say how it wants the names ordered. Assuming ASC.
*/
SELECT DISTINCT surname FROM cd.members
ORDER BY surname ASC
LIMIT 10;

/*
Q9:
You'd like to get the signup date of your last member. How can you retrieve this?
*/
SELECT joindate FROM cd.members
ORDER BY joindate DESC
LIMIT 1;

/*
Q10:
Produce a count of the number of facilities that have a cost to guests of 10 or more.
*/
SELECT COUNT(*) FROM cd.facilities
WHERE guestcost > 10;

/*
Q11:
Produce a list of the total number of slots booked per facility in the month of Sept 2012.
Produce an output table consisting of facility id and slots, sorted by number of slots.
*/
SELECT facid, SUM(slots) from cd.bookings
WHERE TO_CHAR(starttime, 'YYYY-MM') = '2012-09' 
GROUP BY facid
ORDER BY SUM(slots);

/*
Q12:
Produce a list of facilities with more than 1000 slots booked.
Produce an output table consisting of facility id and total slots, sorted by facility id.
*/
SELECT facid, SUM(slots) FROM cd.bookings
GROUP BY facid
	HAVING SUM(slots) > 1000
ORDER BY facid;

/*
Q13:
How can you produce a list of the start times for bookings for tennis courts, for the date 2012-09-21?
Return a list of start time and facility name pairings, ordered by the time.
*/
SELECT starttime, facilities.name FROM cd.bookings
INNER JOIN cd.facilities
	ON facilities.facid = bookings.facid
WHERE facilities.name LIKE '%Tennis Court%'
	AND DATE(starttime) = '2012-09-21'
ORDER BY starttime;

/*
Q4:
How can you produce a list of the start times for bookings by members named 'David Farrell'?
*/
SELECT starttime FROM cd.bookings
INNER JOIN cd.members
	ON bookings.memid = members.memid
WHERE members.firstname || ' ' || members.surname = 'David Farrell';
