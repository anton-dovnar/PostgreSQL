SELECT SUBSTR(mems.surname, 1, 1) AS letter, COUNT(*) as count
FROM cd.members mems
GROUP BY letter
ORDER BY letter;
