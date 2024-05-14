{{ config(materialized='table') }}

with cte4 as (
    select A.cus_id , A.Name ,A.nbr,B.pro_theme
    FROM {{ ref('model_3') }} A
	INNER JOIN {{ ref('model_2') }} B ON A.invoice_number=B.invoice_number
)
select * from cte4