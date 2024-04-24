import snowflake.snowpark.functions as f
def model(dbt,session):
    df=session.sql("Select * from customer")
    df_filter=df.filter(f.col("C_CUSTOMER_ID")=='AAAAAAAANNNOGJAA')
    df_final=df_filter.group_by("C_CUSTOMER_ID").agg(f.sum(f.col('SUM(C_CURRENT_CDEMO_SK)')))
    return df_filter