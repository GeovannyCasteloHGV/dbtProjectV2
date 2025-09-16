SELECT
  a3Code,
  countryName,
  max(population) AS latest_population,
  min(population) AS earliest_population,
  max(year) AS latest_year,
  min(year) AS earliest_year,
  max(population) - min(population) AS population_growth,
  {{ format_population_growth("max(population) - min(population)") }} AS growth_category
FROM {{ ref('int_country_population') }}
GROUP BY a3Code, countryName
