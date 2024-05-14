-- {{ config( materialized="view") }}

with cte as (

SELECT A.cus_id , count(*) nbr
FROM invoices A
INNER JOIN customers B ON A.cus_id = B.cus_id
group by A.cus_id )

select C.cus_id , concat(D.cus_name,D.cus_lastname) Name ,C.nbr
from cte C
INNER JOIN customers D ON C.cus_id = D.cus_id
