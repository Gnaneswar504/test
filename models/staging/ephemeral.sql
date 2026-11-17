{{config(materialized='ephemeral')}}

with tb1 as
(
    select id, first_name, last_name
    from {{source('source_table_name','RAW_CUSTOMERDATA')}}
)
select * from tb1