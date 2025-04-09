-- Job Title Distribution
SELECT job_title, COUNT(*) AS count
FROM ds_salaries_data
GROUP BY job_title
ORDER BY count DESC
LIMIT 10;

-- Experience Level vs. Average Salary
SELECT experience_level,
       ROUND(AVG(salary_in_usd), 2) AS avg_salary
FROM ds_salaries_data
GROUP BY experience_level
ORDER BY avg_salary DESC;

-- Employment Type vs. Average Salary
SELECT employment_type,
       ROUND(AVG(salary_in_usd), 2) AS avg_salary
FROM ds_salaries_data
GROUP BY employment_type
ORDER BY avg_salary DESC;

-- Remote Work Distribution
SELECT remote_ratio, COUNT(*) AS count
FROM ds_salaries_data
GROUP BY remote_ratio
ORDER BY remote_ratio;

-- HR-Specific Analysis (FT & EN)
SELECT job_title,
       ROUND(AVG(salary_in_usd), 2) AS avg_salary
FROM ds_salaries_data
WHERE job_title IN ('Data Engineer', 'Data Scientist', 'Data Analyst')
  AND experience_level = 'EN'
  AND employment_type = 'FT'
GROUP BY job_title
ORDER BY avg_salary DESC;

