SELECT facs.name, SUM(SLOTS * CASE WHEN memid = 0 THEN facs.guestcost ELSE facs.membercost END) AS revenue
FROM cd.bookings bks
INNER JOIN cd.facilities facs ON bks.facid = facs.facid
GROUP BY facs.name
HAVING SUM(SLOTS * CASE WHEN memid = 0 THEN facs.guestcost ELSE facs.membercost END) < 1000
ORDER BY revenue;
