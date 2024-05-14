select A.cus_id , A.Name ,A.nbr
from {{ ref('test_model') }} A
where A.nbr = 0 limit 50