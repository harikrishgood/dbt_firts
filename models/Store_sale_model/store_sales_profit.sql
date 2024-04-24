with store_final as
(
    select * from {{ ref ('store_tbl_2024') }}
),
 store_sales_final as
(
    select * from {{ ref ('store_sale_2024') }}
),
 store_sale_profit_final as
(
select S_STORE_NAME,S_COUNTY,sum(SS_SALES_PRICE),sum(SS_NET_PROFIT) from store_final,store_sales_final
 where S_STORE_SK=SS_STORE_SK 
 group by  1,2
 )
Select * From store_sale_profit_final