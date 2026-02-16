{{ config(materialized='table') }}

with customer_orders as(
select 
	CUSTOMER_ID,
	ORDER_ID,
	ORDER_TS,
	ORDER_CURRENCY,
	ORDER_AMOUNT,
	ORDER_TAX,
	ORDER_TOTAL
from {{ source('bronze', 'customer_orders') }}
)

select *
from customer_orders