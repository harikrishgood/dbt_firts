with cust as (
Select c_customer_id,sum(c_current_cdemo_sk) from customer where c_customer_id like '%NNOGJAA' group by c_customer_id
)
select * from cust