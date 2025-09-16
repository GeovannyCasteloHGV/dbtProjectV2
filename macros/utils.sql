{% macro format_population_growth(column_name) %}
    case
        when {{ column_name }} > 1000000 then 'High Growth'
        when {{ column_name }} between 100000 and 1000000 then 'Medium Growth'
        else 'Low Growth'
    end
{% endmacro %}
