with code as
(
    select * from {{ref('countrydailcode')}}
)
select * From code