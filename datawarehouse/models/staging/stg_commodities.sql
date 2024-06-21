-- import
with source as (
    select
        "Date",
        "Close",
        "simbolo"
    from
        {{ source ('dbsales_xb8b', 'commodities') }}
),
-- renamed
renamed as (
    select
        cast("Date" as date)    as Data,
        "Close"                 as Valor_Fechamento,
        simbolo                 as Simbolo
    from source
)
select * from renamed
