
with cte2 as (
    select A.invoice_number,B.pro_code,B.pro_theme
    FROM invoices_detail A
	INNER JOIN {{ ref('model_1') }} B ON A.pro_code=B.pro_code
)
select * from cte2