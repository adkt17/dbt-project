{{ config(materialized='table') }}

select c.c_custkey, c.c_name, c.c_nationkey as nation,
sum(o.o_totalprice) as total_price
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF10.CUSTOMER c 
left join SNOWFLAKE_SAMPLE_DATA.TPCH_SF10.ORDERS o
on c.c_custkey = o.o_custkey
group by 
    c.c_custkey,
    c.c_name,
    c.c_nationkey
