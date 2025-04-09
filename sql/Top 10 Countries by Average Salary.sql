SELECT TOP 10 
    employee_residence AS country,
    COUNT(*) AS total_roles,
    ROUND(AVG(CAST(salary_in_usd AS BIGINT)), 2) AS avg_salary_usd
FROM global_ai_ml_data_salaries
GROUP BY employee_residence
ORDER BY avg_salary_usd DESC;
