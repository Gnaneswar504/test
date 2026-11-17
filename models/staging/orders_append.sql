{{config(materialized='incremental', incremental_strategy='append',)}}

select * from {{source('source_table_name','RAW_ORDER')}}
