SELECT 
    experience_level,
    CASE 
        WHEN remote_ratio = 0 THEN 'On-Site'
        WHEN remote_ratio = 100 THEN 'Fully Remote'
        ELSE 'Hybrid'
    END AS work_mode,
    COUNT(*) AS total_roles,
    ROUND(AVG(CAST(salary_in_usd AS BIGINT)), 2) AS avg_salary
FROM Cleaned_Salaries
GROUP BY experience_level, remote_ratio
ORDER BY experience_level, avg_salary DESC;
