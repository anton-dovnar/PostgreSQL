SELECT DISTINCT rec.firstname, rec.surname FROM cd.members mem
JOIN cd.members rec ON rec.memid = mem.recommendedby
ORDER BY rec.surname, rec.firstname;
