SELECT 
    experience_level,
    salary_range,
    COUNT(*) AS total_employees
FROM Cleaned_Salaries
GROUP BY experience_level, salary_range
ORDER BY experience_level, salary_range;
