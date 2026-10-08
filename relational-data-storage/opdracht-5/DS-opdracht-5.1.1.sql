SELECT 
    COUNT(supplier_ID),
    MIN(hitcount),
    MAX(hitcount),
    AVG(hitcount),
    SUM(hitcount)
FROM mhl.mhl_hitcount