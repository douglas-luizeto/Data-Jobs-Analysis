/*
Question: What are the highest paying jobs?
- Identify the 10 highest paying Data Science role available remotely
- Focuses on job postings with specified salaries
- Focuses on job postings from the US
Goal: Highlight the highest paying opportunities for Data Scientists
*/

SELECT
    job_id,
    job_title,
    job_title_short,
    c.name AS company_name,
    job_country,
    salary_year_avg
FROM
    job_postings_fact jp
    LEFT JOIN company_dim c
        ON jp.company_id = c.company_id
WHERE
    -- includes all levels of seniority
    job_title_short LIKE '%Data Scientist' AND
    job_work_from_home = TRUE AND
    job_country = 'United States' AND
    salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10;