SELECT COUNT(*) AS missing_count
FROM ds_salaries_data
WHERE work_year IS NULL
    OR experience_level IS NULL
    OR employment_type IS NULL
    OR job_title IS NULL
    OR salary IS NULL
    OR salary_currency IS NULL
    OR salary_in_usd IS NULL
    OR employee_residence IS NULL
    OR remote_ratio IS NULL
    OR company_location IS NULL
    OR company_size IS NULL; -- find missing value


