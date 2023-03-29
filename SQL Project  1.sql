show databases
use project_1
SELECT * FROM employee

/* Q1: Which countries have the most Invoices? */
SELECT COUNT(*) AS c, billing_country FROM invoice GROUP BY billing_country ORDER BY c DESC;

/* Q2: Return all the track names that have a song length longer than the average song length. 
Return the Name and Milliseconds for each track. Order by the song length with the longest songs listed first. */
SELECT name,milliseconds FROM track
WHERE milliseconds > (
	SELECT AVG(milliseconds) AS avg_track_length
	FROM track )
ORDER BY milliseconds DESC;

/* Q3: Which city has the best customers? We would like to throw a promotional Music Festival in the city we made the most money. 
Write a query that returns one city that has the highest sum of invoice totals. 
Return both the city name & sum of all invoice totals */
SELECT billing_city,SUM(total) AS InvoiceTotal FROM invoice GROUP BY billing_city ORDER BY InvoiceTotal DESC LIMIT 1;

/* Q4: What are top 3 values of total invoice? */
SELECT total FROM invoice ORDER BY total DESC LIMIT 3;


/* Q5: What are top 3 billing cities of total invoice? */
SELECT billing_city,total FROM invoice ORDER BY total DESC LIMIT 3;
