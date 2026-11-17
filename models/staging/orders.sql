{{ config(materialized='view') }}

WITH tb1 as(
    select id as order_id,
    order_date,
    user_id as customer_id

    from {{source('source_table_name','RAW_ORDER')}})
select * from tb1
