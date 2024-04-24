import snowflake.snowpark.functions as f
def model (dbt,session):
    dbt.config(
        materialized="table"
    )
    store_=dbt.ref("store_tbl_2024")
    store_sales_=dbt.ref("store_sale_2024")

    final_df=(
        store_
        .join(store_sales_,store_sales_.ss_store_sk == store_.s_store_sk,'Inner')
        .group_by(store_.s_store_name,store_.S_COUNTY)
            .agg(
            f.sum(f.col(SS_SALES_PRICE)).alias('sales_price')
        )
    )   
    return final_df