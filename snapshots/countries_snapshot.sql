{% snapshot countries_snapshot %}
    {{
        config(
            target_schema='snapshots',
            unique_key='a3Code',
            strategy='check',
            check_cols=['countryName']
        )
    }}
    select * from {{ ref('countries') }}
{% endsnapshot %}