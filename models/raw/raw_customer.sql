{{
    config(
        materialized='table'
    )
}}

select * from raw.globalmart.customer limit 10