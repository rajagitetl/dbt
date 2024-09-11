{{config(materialized='table',unique_key='id')}}

select id,name,loc,concat(name,loc) as both_strings,
case when loc='Canada' then 'US-dollar'
when loc='US' then 'US-dollar'
when loc='India' then 'ind-rupie'
when loc='Russia' then 'Rupbee-rus'
else 'others' end as loc_update,current_timestamp as login_updated_date from {{(source('sch01','emp'))}}
