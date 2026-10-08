-- CREATE VIEW DIRECTIE
-- AS
SELECT 
    cont.`supplier_ID`,
    cont.name AS contact,
    cont.contacttype AS Functie,
    dep.name AS department
FROM mhl.mhl_contacts as cont
INNER JOIN mhl.mhl_departments as dep
    ON cont.department = dep.id
WHERE dep.name = "Directie"
    OR cont.contacttype LIKE "%directeur%"