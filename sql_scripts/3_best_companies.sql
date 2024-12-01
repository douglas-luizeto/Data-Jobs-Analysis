SELECT
    c.company_id,
    c.name,
    COUNT(jp.company_id) AS job_postings,
    AVG(jp.salary_year_avg)::INT AS avg_salary,
    MIN(jp.salary_year_avg)::INT AS min_salary, 
    MAX(jp.salary_year_avg)::INT AS max_salary
FROM job_postings_fact AS jp
    LEFT JOIN company_dim c ON jp.company_id = c.company_id
WHERE
    job_title_short LIKE '%Data Scientist' AND
    job_work_from_home = TRUE AND
    job_country = 'United States' AND
    salary_year_avg IS NOT NULL
GROUP BY
    c.company_id,
    c.name
HAVING
    COUNT(jp.company_id) >= 5
ORDER BY
    min_salary DESC,
    avg_salary DESC,
    job_postings DESC
LIMIT 10;