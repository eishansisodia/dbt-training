{{
    config(
        materialized='table'
    )
}}

select * from {{ source('globalmart','customer') }}
--select * from raw.globalmart.customer