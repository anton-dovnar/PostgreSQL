SELECT mem.firstname AS memfname, mem.surname AS memsname,
       rec.firstname AS recfname, rec.surname AS recsnmae
FROM cd.members mem
LEFT JOIN cd.members rec ON rec.memid = mem.recommendedby
ORDER BY memsname, memfname;
