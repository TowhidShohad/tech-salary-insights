SELECT 
    remote_ratio,
    COUNT(*) AS total_roles,
    ROUND(AVG(CAST(salary_in_usd AS BIGINT)), 2) AS avg_salary_usd
FROM global_ai_ml_data_salaries
GROUP BY remote_ratio
ORDER BY remote_ratio DESC;
