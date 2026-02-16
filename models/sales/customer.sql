{{ config(materialized='table') }}

WITH customer AS (
select 
    ID,
	FIRST_NAME,
	LAST_NAME,
	STREET_ADDRESS,
	STATE,
	CITY,
	ZIP,
	PHONE_NUMBER,
	EMAIL,
	SSN,
	BIRTHDATE,
	JOB,
	CREDITCARD,
	COMPANY,
	OPTIN
from {{ source('bronze', 'customer') }}
)

select *
from customer