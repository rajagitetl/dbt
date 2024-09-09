{{config(materialized='view')}}

select * from {{(source('sch01','emp_secure_view'))}}