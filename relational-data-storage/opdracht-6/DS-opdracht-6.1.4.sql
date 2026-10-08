SELECT 
    CASE
        WHEN rub_par.id = rub_child.id THEN rub_par.name
        WHEN rub_par.id < rub_child.id THEN CONCAT(rub_par.name, " - ", rub_child.name)
    END AS combined_name,
    SUM(hitc.hitcount) AS numsup
FROM mhl_rubrieken as rub_par
CROSS JOIN mhl_rubrieken as rub_child
    ON rub_par.id = rub_child.parent
    OR rub_par.id = rub_child.id
LEFT JOIN mhl_suppliers_mhl_rubriek_view AS supp_rub
    ON supp_rub.`mhl_rubriek_view_ID` = rub_child.id
LEFT JOIN mhl_suppliers AS supp
    ON supp_rub.`mhl_suppliers_ID` = supp.id
LEFT JOIN mhl_hitcount AS hitc
    ON hitc.`supplier_ID` = supp.id
WHERE NOT (rub_par.id = rub_child.id AND rub_par.parent != 0)   -- Haalt alle subrubrieken weg
GROUP BY combined_name
ORDER BY rub_par.name, rub_child.name