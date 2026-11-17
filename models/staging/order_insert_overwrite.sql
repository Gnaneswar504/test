{{config(materialized='incremental',
        unique_kye='id',
        incremental_strategy='insert_overwrite')}}
select * from {{source('source_table_name','RAW_ORDER')}}