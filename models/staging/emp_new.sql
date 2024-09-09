{{config(materialized='table',unique_key='id')}}

select id,concat(name,loc) as both_strings from {{(source('sch01','emp'))}}
