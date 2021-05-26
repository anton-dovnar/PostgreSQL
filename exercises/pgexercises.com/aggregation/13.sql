SELECT facs.facid, facs.name, TRUNC((SUM(bks.slots) / 2.0), 2) AS "Total Hours"
FROM cd.bookings bks
JOIN cd.facilities facs ON facs.facid = bks.facid
GROUP BY facs.facid, facs.name
ORDER BY facs.facid;
