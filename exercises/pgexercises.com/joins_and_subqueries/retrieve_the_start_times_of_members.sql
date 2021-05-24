SELECT starttime FROM cd.bookings
JOIN cd.members ON cd.members.memid = cd.bookings.memid
WHERE firstname = 'David' AND surname = 'Farrell';
