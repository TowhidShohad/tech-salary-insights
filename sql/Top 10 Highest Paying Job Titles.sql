SELECT TOP 10 
    job_title, 
    ROUND(AVG(salary_in_usd), 2) AS avg_salary_usd
FROM global_ai_ml_data_salaries
GROUP BY job_title
ORDER BY avg_salary_usd DESC;
