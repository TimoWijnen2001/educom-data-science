SELECT
    joindate, 
    supp.id
FROM mhl_suppliers AS supp
WHERE (EXTRACT(DAY FROM LAST_DAY(joindate)) - EXTRACT(DAY FROM joindate)) <= 7