{{config(
    materialized="table",
)}}

with source as (
    select * from {{source('db01','s_emp')}}),
renamed as (
    select id as customer_id,
    first_name,
    last_name
    from source
)