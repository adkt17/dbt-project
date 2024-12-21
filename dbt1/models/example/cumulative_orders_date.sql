{{ config(materialized='table') }}

SELECT DISTINCT
    o_orderdate,
    SUM(o_totalprice) OVER (ORDER BY o_orderdate) AS cumulative_sales
FROM
    "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS"
ORDER BY
    o_orderdate
