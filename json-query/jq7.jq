map(
    . + {
        population: [
            {year: 2022, population: .population_2022},
            {year: 2020, population: .population_2020},
            {year: 2015, population: .population_2015},
            {year: 2010, population: .population_2010},
            {year: 2000, population: .population_2000},
            {year: 1990, population: .population_1990},
            {year: 1980, population: .population_1980},
            {year: 1970, population: .population_1970}
        ]
    }
)
| map({
    rank, cca3, country,capital, continent, population, area_km2, population_density, population_growth_rate, percentage_world_population
})