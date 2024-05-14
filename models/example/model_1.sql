WITH cte1 AS (
SELECT 
    A.pro_code 
  , B.pro_theme
  , ROW_NUMBER() OVER (PARTITION BY A.pro_code ORDER BY COUNT(B.pro_theme) DESC) rn
FROM invoices_detail A
INNER JOIN products B ON A.pro_code=B.pro_code
GROUP BY
  A.pro_code,
  B.pro_theme)

SELECT pro_code,pro_theme
FROM cte1 