-- CREATE VIEW VERZENDLIJST
-- AS
SELECT 
    supp.id, 
    CASE
        WHEN supp.p_address != "" THEN supp.p_address
        WHEN supp.p_address = "" THEN CONCAT(supp.straat, " ", supp.huisnr)
    END AS adres,
    CASE
        WHEN supp.p_address != "" THEN supp.p_postcode
        WHEN supp.p_address = "" THEN supp.postcode
    END AS postcode,
    CASE
        WHEN supp.p_address != "" THEN p_cities.name
        WHEN supp.p_address = "" THEN reg_cities.name
    END AS stad
FROM mhl.mhl_suppliers AS supp
INNER JOIN mhl.mhl_cities AS reg_cities
    ON supp.city_ID = reg_cities.id
INNER JOIN mhl.mhl_cities AS p_cities
    ON supp.p_city_ID = p_cities.id