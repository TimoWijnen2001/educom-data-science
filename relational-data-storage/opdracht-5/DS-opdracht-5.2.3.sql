SELECT 
    year,
    IFNULL(SUM(IF(month IN (1,2,3), hitcount, NULL)), 0) AS "Q1",
    IFNULL(SUM(IF(month IN (4,5,6), hitcount, NULL)), 0) AS "Q2",
    IFNULL(SUM(IF(month IN (7,8,9), hitcount, NULL)), 0) AS "Q3",
    IFNULL(SUM(IF(month IN (10,11,12), hitcount, NULL)), 0) AS "Q4",
    SUM(hitcount) AS Totaal
FROM mhl.mhl_hitcount
GROUP BY year