SELECT *
FROM DIRECTIE

select *
from verzendlijst

SELECT 
    supp.name,
    IFNULL(dir.contact, "t.a.v. directie"),
    ver.adres,
    ver.postcode,
    ver.stad
FROM directie AS dir
LEFT JOIN verzendlijst AS ver
    ON dir.`supplier_ID` = ver.id
INNER JOIN mhl.mhl_suppliers AS supp
    ON supp.id = dir.`supplier_ID`
ORDER BY supp.name