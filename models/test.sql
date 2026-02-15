select
*
from {{ source('dbt_raw', 'customer') }}
limit 10