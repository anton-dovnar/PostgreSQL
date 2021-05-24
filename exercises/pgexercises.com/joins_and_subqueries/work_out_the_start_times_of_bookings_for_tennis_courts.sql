SELECT starttime, name FROM cd.bookings
JOIN cd.facilities ON cd.facilities.facid = cd.bookings.facid
WHERE name IN ('Tennis Court 1', 'Tennis Court 2')
      AND starttime >= '2012-09-21'
      AND starttime < '2012-09-22'
ORDER BY starttime;
