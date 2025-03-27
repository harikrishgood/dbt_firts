with product as 
(
 select a.product_id PRODUCT_NAME,a.state,Region, Unit_SOLD,
from Dim_Product A inner join Fact_Sales B
on A.PRODUCT_ID=B.PRODUCT_ID
group by 1,2,3,4
)
Select * from product