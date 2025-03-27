{%snapshot emp_snapshot02 %}
{{
    config(
    target_database='DBT_DB',
    target_schema='PROD',
    unique_key='employee_id',
    strategy='check',
    check_cols=['employee_name','state']
    )

}}
select * from prod.stg_emp02

{% endsnapshot%}