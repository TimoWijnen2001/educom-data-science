SELECT 
    COUNT(hitcount),
    MIN(hitcount),
    MAX(hitcount),
    AVG(hitcount),
    SUM(hitcount)
FROM mhl.mhl_hitcount
GROUP BY year