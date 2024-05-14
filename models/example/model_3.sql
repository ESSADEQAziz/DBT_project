with cte3 as (
    select A.cus_id , A.Name ,A.nbr,B.invoice_number
from {{ ref('test_model') }} A
INNER JOIN invoices B ON A.cus_id = B.cus_id
)
select * from cte3 limit 100