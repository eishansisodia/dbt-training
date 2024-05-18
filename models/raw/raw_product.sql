select * from {{ source('globalmart', 'product') }}
--select * from raw.globalmart.product