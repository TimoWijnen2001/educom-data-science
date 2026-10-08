-- Selecteer alle hoofdrubrieken en hun subrubrieken. 
-- Dus de rubrieken moet ik allemaal 1x hebben in de 1e kolom, en als er subrubrieken zijn moeten deze in de 2e kolom met herhalingen.

SELECT 
    rubriek_par.name AS Hoofdrubriek,
    IF (rubriek_child.id = rubriek_par.id, "", rubriek_child.name) AS Subrubriek
FROM mhl.mhl_rubrieken as rubriek_par
CROSS JOIN mhl.mhl_rubrieken as rubriek_child
    ON rubriek_par.id = rubriek_child.parent
    OR rubriek_par.id = rubriek_child.id
ORDER BY rubriek_par.name, rubriek_child.name