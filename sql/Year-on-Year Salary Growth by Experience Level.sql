SELECT 
    work_year,
    experience_level,
    ROUND(AVG(CAST(salary_in_usd AS BIGINT)), 2) AS avg_salary
FROM Cleaned_Salaries
GROUP BY work_year, experience_level
ORDER BY work_year, experience_level;
