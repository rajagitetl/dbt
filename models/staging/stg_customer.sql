{{config(materialized="table")}}

with source as (
    select * from {{source('rajender','s_emp')}}),
renamed as (
    select concat(id,'0000') as customer_id,
    substring(name,1,3) as customer_name,
    concat(loc,'_place') as customer_location,
    etl_loaded_date
    from source
),
emp_new as (
    select concat(id,'0000') id,name,loc 
        from {{source('rajender','emp')}})
select distinct emp_new.id,emp_new.name,emp_new.loc,renamed.etl_loaded_date from renamed 
join emp_new on (renamed.customer_id=emp_new.id)