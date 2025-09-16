SELECT 
    p.year,
    p.population,
    c.countryName,
    c.a3Code
FROM {{ ref('stg_populations') }} p 
JOIN {{ ref('countries') }} c 
    ON p.a3Code = c.a3Code
