SELECT DISTINCT mem.firstname || ' ' || mem.surname as member,
(SELECT rec.firstname || ' ' || rec.surname as recommender FROM cd.members rec
    WHERE rec.memid = mem.recommendedby
)
FROM cd.members mem
ORDER BY member;
