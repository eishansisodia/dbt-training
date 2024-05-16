{{
    config(
        materialized='table'
    )
}}



select * from raw.globalmart.orders limit 10