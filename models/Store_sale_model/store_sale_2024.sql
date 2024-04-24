{{ config(materialized='table') }}
with store_sale_tbl_2024 as
(Select SS_STORE_SK,SS_QUANTITY,SS_SALES_PRICE,SS_NET_PROFIT from store_sale_2024
)select * from store_sale_tbl_2024