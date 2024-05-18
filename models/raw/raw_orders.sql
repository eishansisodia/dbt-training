select * from {{ source('globalmart', 'orders') }}
--select * from raw.globalmart.orders 