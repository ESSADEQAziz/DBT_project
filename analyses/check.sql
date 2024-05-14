select A.cus_id , upper(A.Name) ,A.nbr
from {{ ref('test_model') }} A limit 20