SELECT EXTRACT(MONTH FROM cal.month) AS month,
(cal.month + INTERVAL '1 month') - cal.month AS length
FROM (SELECT GENERATE_SERIES(TIMESTAMP '2012-01-01', TIMESTAMP '2012-12-01', INTERVAL '1 month') AS month) cal
ORDER BY month;
