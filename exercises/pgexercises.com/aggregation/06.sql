SELECT facid, EXTRACT(month FROM starttime) as month, SUM(slots) AS "Total Slots"
FROM cd.bookings
WHERE EXTRACT(year FROM starttime) = 2012
GROUP BY facid, month
ORDER BY facid, month;
