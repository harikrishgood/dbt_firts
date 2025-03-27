{% snapshot employee_snapshot %}

{{
    config(
      target_database='DBT_DB',
      target_schema='PROD',
      unique_key='employee_id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from PROD.STG_EMP01



{% endsnapshot %}