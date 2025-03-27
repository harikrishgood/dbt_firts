{%set old_fact %}

select * from prod.dim_product

{% endset %}

{%set new_fact %}

select * from prod.dim_product_dev
{% endset %}
{{ audit_helper.compare_queries(
    a_query=old_fact,
    b_query=new_fact,
    primary_key="Proudct_id"
)

}}