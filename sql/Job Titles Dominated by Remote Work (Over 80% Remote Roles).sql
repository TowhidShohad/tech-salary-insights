SELECT 
    job_title,
    COUNT(*) AS total_roles,
    SUM(CASE WHEN remote_ratio = 100 THEN 1 ELSE 0 END) AS fully_remote_roles,
    ROUND(100.0 * SUM(CASE WHEN remote_ratio = 100 THEN 1 ELSE 0 END) / COUNT(*), 2) AS percent_remote
FROM Cleaned_Salaries
GROUP BY job_title
HAVING ROUND(100.0 * SUM(CASE WHEN remote_ratio = 100 THEN 1 ELSE 0 END) / COUNT(*), 2) >= 80
ORDER BY percent_remote DESC;
