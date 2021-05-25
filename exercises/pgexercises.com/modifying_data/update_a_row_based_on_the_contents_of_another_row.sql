UPDATE cd.facilities
SET guestcost = (SELECT guestcost FROM cd.facilities LIMIT 1) * 1.1,
    membercost = (SELECT membercost FROM cd.facilities LIMIT 1) * 1.1
WHERE facid = 1;
