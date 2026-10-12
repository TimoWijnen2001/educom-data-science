group_by(.continent)
| map( {
    continent: .[0].continent,
    total_pop_2022: (map(.population_2022) | add),
    total_pop_1970: (map(.population_1970) | add)
    } )
| map (. + {
    pop_groei: (.total_pop_2022 - .total_pop_1970)
})