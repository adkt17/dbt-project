{{ config(materialized='incremental', unique_key = 'd_date') }}

select * from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF10TCL.DATE_DIM where d_date <= current_date -1