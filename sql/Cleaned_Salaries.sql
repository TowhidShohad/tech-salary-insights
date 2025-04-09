CREATE VIEW Cleaned_Salaries AS
SELECT
    work_year,
    
    -- Convert experience level codes to full labels
    CASE experience_level
        WHEN 'EN' THEN 'Entry'
        WHEN 'MI' THEN 'Mid'
        WHEN 'SE' THEN 'Senior'
        WHEN 'EX' THEN 'Executive'
        ELSE experience_level
    END AS experience_level,

    employment_type,

    job_title,

    -- Keep raw salary and normalized salary
    salary,
    salary_currency,
    salary_in_usd,

    -- Add a salary range bucket
    CASE 
        WHEN salary_in_usd < 50000 THEN 'Low'
        WHEN salary_in_usd BETWEEN 50000 AND 150000 THEN 'Medium'
        ELSE 'High'
    END AS salary_range,

    employee_residence,
    remote_ratio,
    company_location,

    -- Convert company size codes to labels
    CASE company_size
        WHEN 'S' THEN 'Small'
        WHEN 'M' THEN 'Medium'
        WHEN 'L' THEN 'Large'
        ELSE company_size
    END AS company_size
FROM global_ai_ml_data_salaries;
