{{
    config(
        materialized='table'
    )
}}

select * from raw.globalmart.product limit 10