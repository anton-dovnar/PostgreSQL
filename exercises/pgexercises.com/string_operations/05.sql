SELECT LPAD(CAST(zipcode AS CHAR(5)),5,'0') zip FROM cd.members ORDER BY zip;
