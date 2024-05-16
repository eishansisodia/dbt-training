select o.ORDERID,
o.ORDERDATE,
o.SHIPDATE,
o.SHIPMODE,
o.ORDERSELLINGPRICE-o.ORDERCOSTPRICE as orderprofit,
o.ORDERSELLINGPRICE,
o.ORDERCOSTPRICE,
c.customername,
c.segment,
c.country,
p.category,
p.productname,
p.subcategory
from {{ ref('raw_orders') }} as o
left join {{ ref('raw_customer') }} c
on o.customerid=c.customerid
left join {{ ref('raw_product') }} p
on o.productid=p.productid