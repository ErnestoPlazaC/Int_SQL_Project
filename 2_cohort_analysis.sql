SELECT
	cohort_year,
	COUNT(DISTINCT customerkey) AS total_customers,
	SUM(total_net_revenue) AS total_revenue,
	ROUND(SUM(total_net_revenue) / COUNT(DISTINCT customerkey)::NUMERIC, 2) AS customer_revenue
FROM 
 	cohort_analysis 
WHERE 
	orderdate = first_date_purchase 
GROUP BY 
	cohort_year;