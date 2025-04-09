SELECT *
FROM (
    SELECT 
        employee_residence AS country,
        job_title,
        ROUND(AVG(CAST(salary_in_usd AS BIGINT)), 2) AS avg_salary,
        ROW_NUMBER() OVER (
            PARTITION BY employee_residence 
            ORDER BY AVG(CAST(salary_in_usd AS BIGINT)) DESC
        ) AS rank_in_country
    FROM Cleaned_Salaries
    GROUP BY employee_residence, job_title
) AS ranked
WHERE rank_in_country <= 3
ORDER BY country, rank_in_country;
