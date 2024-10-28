SELECT
turnover, purchase_cost,
SUM(turnover-purchase_cost) AS margin
FROM('https://console.cloud.google.com/bigquery?project=data-analytics-bootcamp-363212&ws=!1m5!1m4!4m3!1sdata-analytics-bootcamp-363212!2scourse14!3sgwz_sales')
GROUP BY date_date
ORDER BY date_date