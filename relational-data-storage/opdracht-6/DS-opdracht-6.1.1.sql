CREATE VIEW maanden_nl (id, name) AS
SELECT 1, "Januari"
UNION SELECT 2, "Februari"
UNION SELECT 3, "Maart"
UNION SELECT 4, "April"
UNION SELECT 5, "Mei"
UNION SELECT 6, "Juni"
UNION SELECT 7, "Juli"
UNION SELECT 8, "Augustus"
UNION SELECT 9, "September"
UNION SELECT 10, "Oktober"
UNION SELECT 11, "November"
UNION SELECT 12, "December"

SELECT 
    year AS jaar,
    maanden_nl.name AS maand,
    COUNT(supplier_ID) AS "aantal leveranciers",
    SUM(hitcount) AS "totaal aantal hits"
FROM mhl.mhl_hitcount AS hitc
INNER JOIN maanden_nl
    ON maanden_nl.id = month
GROUP BY jaar, month
ORDER BY jaar DESC, maand 