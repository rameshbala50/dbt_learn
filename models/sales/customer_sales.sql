with customer_sales as (

select co.customer_id, c.first_name, c.last_name, c.state, co.order_id, co.order_ts, co.order_currency, co.order_total
from {{ ref('customer_orders') }} co
left join {{ ref('customer') }} c
    on co.customer_id = c.id
)

select *
from customer_sales