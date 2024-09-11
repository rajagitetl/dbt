{{config(materialized='table',unique_key='id')}}

select id,concat(name,loc) as both_strings,
case when loc='Canada' then 'US-dollar'
when loc='US' then 'US-dollar'
when loc='India' then 'ind-rupie'
when loc='Russia' then 'Rupbee-rus'
else 'others' end as loc from {{(source('sch01','emp'))}}
