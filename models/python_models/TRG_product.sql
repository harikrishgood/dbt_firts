{{
	config(
			materialized='incremental',
			unique_key='SRC_PRODUCT_ID'
			)
}}

Select * from src_product

{%if is_incremental() %}

where 
update_at >(select max(update_at) from {{this}})

{%endif%}