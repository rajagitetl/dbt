{{config(materialized='incremental')}}

select id,name,loc,current_timestamp as login_updated_date from {{(source("sch01","emp"))}}