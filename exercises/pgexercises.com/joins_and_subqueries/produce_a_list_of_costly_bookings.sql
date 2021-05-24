SELECT COALESCE(mem.firstname, '') || ' ' || COALESCE(mem.surname, '') AS member, facs.name AS facility,
	CASE
		WHEN mem.memid = 0 THEN
			bks.slots*facs.guestcost
		ELSE
			bks.slots*facs.membercost
	END AS cost
FROM cd.members mem
JOIN cd.bookings bks ON mem.memid = bks.memid
JOIN cd.facilities facs ON bks.facid = facs.facid
WHERE bks.starttime >= '2012-09-14' AND bks.starttime < '2012-09-15' AND (
    (mem.memid = 0 AND bks.slots*facs.guestcost > 30) OR
    (mem.memid != 0 AND bks.slots*facs.membercost > 30)
)
ORDER BY cost DESC;
