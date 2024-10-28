SELECT
FROM ('data-analytics-bootcamp-363212.course14.gwz_sales')
*, # Colonne model_type
  CASE
    WHEN REGEXP_CONTAINS(LOWER(model_name),"tour de cou|neckband|tapis|mat|flask|gourde") THEN "Accessories"
    WHEN REGEXP_CONTAINS(LOWER(model_name),"t-shirt") THEN "T-shirt"
    WHEN REGEXP_CONTAINS(LOWER(model_name),"crop-top|brassière|bra") THEN "Débardeur"
    WHEN REGEXP_CONTAINS(LOWER(model_name),"legging") THEN "Legging"
    WHEN REGEXP_CONTAINS(LOWER(model_name),"short") THEN "Short"
    WHEN REGEXP_CONTAINS(LOWER(model_name),"débardeur|haut") THEN "Top"
    ELSE NULL
  END AS model_type,
FROM `dataanalyticsalexdarge.course15.circle_stock_kpi`