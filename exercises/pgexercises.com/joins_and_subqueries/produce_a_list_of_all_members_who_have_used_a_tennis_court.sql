SELECT DISTINCT COALESCE(mem.firstname, '') || ' ' || COALESCE(mem.surname, '') AS member, fac.name AS facility
FROM cd.members mem
JOIN cd.bookings bk ON bk.memid = mem.memid
JOIN cd.facilities fac ON fac.facid = bk.facid
WHERE fac.name IN ('Tennis Court 1', 'Tennis Court 2')
ORDER BY member, facility;
