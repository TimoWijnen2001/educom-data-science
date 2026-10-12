Je kan de data opsplitsen in de volgende tabellen:

Country
    id, (PK)
    country,
    cca3,
    captial,
    continent,
    area_km2,

Population
    id (PK)
    Country.id (FK)
    year,
    value

