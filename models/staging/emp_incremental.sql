{{config(materialized='incremental')}}

select id,name,loc,login_updated_date from {{(source("sch01","emp_new"))}}