group_by(.continent)
| map( {
    continent: .[0].continent,
    total_pop_2022: (map(.population_2022) | add),
    total_pop_2020: (map(.population_2020) | add),
    total_pop_2015: (map(.population_2015) | add),
    total_pop_2010: (map(.population_2010) | add),
    total_pop_2000: (map(.population_2000) | add),
    total_pop_1990: (map(.population_1990) | add),
    total_pop_1980: (map(.population_1980) | add),
    total_pop_1970: (map(.population_1970) | add)
    } )
| map (. + {
    pop_groei_2022: (.total_pop_2022 - .total_pop_1970) / (.total_pop_1970) * 100 * 100 | round / 100,
    pop_groei_2020: (.total_pop_2020 - .total_pop_1970) / (.total_pop_1970) * 100 * 100 | round / 100,
    pop_groei_2015: (.total_pop_2015 - .total_pop_1970) / (.total_pop_1970) * 100 * 100 | round / 100,
    pop_groei_2010: (.total_pop_2010 - .total_pop_1970) / (.total_pop_1970) * 100 * 100 | round / 100,
    pop_groei_2000: (.total_pop_2000 - .total_pop_1970) / (.total_pop_1970) * 100 * 100 | round / 100,
    pop_groei_1990: (.total_pop_1990 - .total_pop_1970) / (.total_pop_1970) * 100 * 100 | round / 100,
    pop_groei_1980: (.total_pop_1980 - .total_pop_1970) / (.total_pop_1970) * 100 * 100 | round / 100,
})
| map ({
    continent: .continent, 
    pop_groei_2022: "\(.pop_groei_2022)%", 
    pop_groei_2020: "\(.pop_groei_2020)%", 
    pop_groei_2015: "\(.pop_groei_2015)%", 
    pop_groei_2010: "\(.pop_groei_2010)%", 
    pop_groei_2000: "\(.pop_groei_2000)%", 
    pop_groei_1990: "\(.pop_groei_1990)%", 
    pop_groei_1980: "\(.pop_groei_1980)%"
    })