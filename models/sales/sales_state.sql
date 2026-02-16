with sales_state as (

select state, count(order_id) as order_count, sum(order_total) as total_sales
from {{ ref('customer_sales') }}
group by state

)

select *
from sales_state