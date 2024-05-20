select o.ORDERID,
o.ORDERDATE,
o.SHIPDATE,
o.SHIPMODE,
o.ORDERSELLINGPRICE-o.ORDERCOSTPRICE as orderprofit,
o.ORDERSELLINGPRICE,
o.ORDERCOSTPRICE,
c.customerid,
c.customername,
c.segment,
c.country,
p.productid,
p.category,
p.productname,
p.subcategory,
{{ markup('o.ORDERSELLINGPRICE','o.ORDERCOSTPRICE') }} as markup
from {{ ref('raw_orders') }} as o
left join {{ ref('raw_customer') }} c
on o.customerid=c.customerid
left join {{ ref('raw_product') }} p
on o.productid=p.productid

{{limit_data_in_dev('ORDERDATE')}}