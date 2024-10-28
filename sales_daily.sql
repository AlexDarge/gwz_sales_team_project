SELECT 
    date_date,
    ROUND(SUM(turnover),2) AS sum_turnover,
    ROUND(SUM(purchase_cost),2) AS sum_purchase,
    ROUND(SUM(turnover_before_promo-turnover),2) AS promo_value,
    ROUND(SUM(turnover))-SUM(purchase_cost) AS margin
FROM 'data-analytics-bootcamp-363212.course14.gwz_sales'
GROUP BY date_date
ORDER BY date_date ASC