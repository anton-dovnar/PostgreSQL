SELECT mem.surname, mem.firstname, mem.memid, MIN(bks.starttime) FROM cd.members mem
JOIN cd.bookings bks ON bks.memid = mem.memid
WHERE bks.starttime >= '2012-09-01'
GROUP BY mem.surname, mem.firstname, mem.memid
ORDER BY mem.memid;
