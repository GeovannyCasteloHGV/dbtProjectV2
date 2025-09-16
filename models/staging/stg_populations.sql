SELECT 
    A3Code,
    year,
    population
FROM {{ source('raw', 'raw_populations') }}