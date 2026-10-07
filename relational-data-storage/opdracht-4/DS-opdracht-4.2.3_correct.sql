SELECT 
    ifNULL(rubr_parent.name, rubr_child.name) AS hoofd, 
    IF(ISNULL(rubr_parent.name), "", rubr_child.name) AS sub
FROM mhl.mhl_rubrieken AS rubr_parent
RIGHT OUTER JOIN mhl.mhl_rubrieken AS rubr_child
    ON rubr_parent.id = rubr_child.parent
ORDER BY hoofd, sub