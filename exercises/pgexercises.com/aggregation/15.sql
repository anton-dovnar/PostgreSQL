SELECT (SELECT COUNT(*) FROM cd.members) AS count, firstname, surname
FROM cd.members
ORDER BY joindate;
