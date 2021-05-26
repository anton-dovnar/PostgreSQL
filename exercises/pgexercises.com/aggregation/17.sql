SELECT facid, total FROM (
    SELECT facid, SUM(slots) total, RANK() OVER(ORDER BY SUM(slots) DESC) rank
    FROM cd.bookings
    GROUP BY facid
) as ranked
where rank = 1;
