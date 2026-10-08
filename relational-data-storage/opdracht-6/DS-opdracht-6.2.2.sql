SELECT 
    supp.id,
    supp.joindate,
    DATEDIFF(CURRENT_DATE, joindate) AS diff_in_days
FROM mhl_suppliers AS supp
ORDER BY diff_in_days