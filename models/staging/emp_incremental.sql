{{config(materialized='incremental')}}

select * from {{(source("sch01","emp_new"))}}