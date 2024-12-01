/*
Question: What skills do the highest paying jobs require?
- Identify all the skills related to the highest paying jobs
- Focuses on job postings with specified salaries
- Focuses on job postings from the US
Goal: Highlight the skillsets required for high-paying Data Scientist roles
*/

WITH highest_paying_jobs AS (
    SELECT
    job_id,
    job_title,
    job_title_short,
    c.name AS company_name,
    job_country,
    salary_year_avg::INT
FROM
    job_postings_fact jp
    LEFT JOIN company_dim c
        ON jp.company_id = c.company_id
WHERE
    -- includes all levels of seniority
    job_title_short LIKE '%Data Analyst' AND
    job_work_from_home = TRUE AND
    job_country = 'United States' AND
    salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10
)

SELECT
    highest_paying_jobs.*,
    s.skills,
    s.type
FROM highest_paying_jobs
    LEFT JOIN skills_job_dim sj ON highest_paying_jobs.job_id = sj.job_id
    LEFT JOIN skills_dim s ON s.skill_id = sj.skill_id;

/*
Sample result
[
  {
    "job_id": 547382,
    "job_title": "Director of Analytics",
    "job_title_short": "Data Analyst",
    "company_name": "Meta",
    "job_country": "United States",
    "salary_year_avg": 336500,
    "skills": null,
    "type": null
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "job_country": "United States",
    "salary_year_avg": 255830,
    "skills": "sql",
    "type": "programming"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "job_country": "United States",
    "salary_year_avg": 255830,
    "skills": "python",
    "type": "programming"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "job_country": "United States",
    "salary_year_avg": 255830,
    "skills": "r",
    "type": "programming"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "job_country": "United States",
    "salary_year_avg": 255830,
    "skills": "azure",
    "type": "cloud"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "job_country": "United States",
    "salary_year_avg": 255830,
    "skills": "databricks",
    "type": "cloud"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "job_country": "United States",
    "salary_year_avg": 255830,
    "skills": "aws",
    "type": "cloud"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "job_country": "United States",
    "salary_year_avg": 255830,
    "skills": "pandas",
    "type": "libraries"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "job_country": "United States",
    "salary_year_avg": 255830,
    "skills": "pyspark",
    "type": "libraries"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "job_country": "United States",
    "salary_year_avg": 255830,
    "skills": "jupyter",
    "type": "libraries"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "job_country": "United States",
    "salary_year_avg": 255830,
    "skills": "excel",
    "type": "analyst_tools"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "job_country": "United States",
    "salary_year_avg": 255830,
    "skills": "tableau",
    "type": "analyst_tools"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "job_country": "United States",
    "salary_year_avg": 255830,
    "skills": "power bi",
    "type": "analyst_tools"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_title_short": "Data Analyst",
    "company_name": "AT&T",
    "job_country": "United States",
    "salary_year_avg": 255830,
    "skills": "powerpoint",
    "type": "analyst_tools"
  },
  {
    "job_id": 99305,
    "job_title": "Data Analyst, Marketing",
    "job_title_short": "Data Analyst",
    "company_name": "Pinterest Job Advertisements",
    "job_country": "United States",
    "salary_year_avg": 232423,
    "skills": "sql",
    "type": "programming"
  },
  {
    "job_id": 99305,
    "job_title": "Data Analyst, Marketing",
    "job_title_short": "Data Analyst",
    "company_name": "Pinterest Job Advertisements",
    "job_country": "United States",
    "salary_year_avg": 232423,
    "skills": "python",
    "type": "programming"
  },
  {
    "job_id": 99305,
    "job_title": "Data Analyst, Marketing",
    "job_title_short": "Data Analyst",
    "company_name": "Pinterest Job Advertisements",
    "job_country": "United States",
    "salary_year_avg": 232423,
    "skills": "r",
    "type": "programming"
  },
  {
    "job_id": 99305,
    "job_title": "Data Analyst, Marketing",
    "job_title_short": "Data Analyst",
    "company_name": "Pinterest Job Advertisements",
    "job_country": "United States",
    "salary_year_avg": 232423,
    "skills": "hadoop",
    "type": "libraries"
  },
  {
    "job_id": 99305,
    "job_title": "Data Analyst, Marketing",
    "job_title_short": "Data Analyst",
    "company_name": "Pinterest Job Advertisements",
    "job_country": "United States",
    "salary_year_avg": 232423,
    "skills": "tableau",
    "type": "analyst_tools"
  },
]
*/