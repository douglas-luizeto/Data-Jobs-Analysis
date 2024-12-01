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
    salary_year_avg::INT
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



/*
Query results

[
  {
    "job_id": 40145,
    "job_title": "Staff Data Scientist/Quant Researcher",
    "job_title_short": "Data Scientist",
    "company_name": "Selby Jennings",
    "job_country": "United States",
    "salary_year_avg": "550000.0"
  },
  {
    "job_id": 1714768,
    "job_title": "Staff Data Scientist - Business Analytics",
    "job_title_short": "Data Scientist",
    "company_name": "Selby Jennings",
    "job_country": "United States",
    "salary_year_avg": "525000.0"
  },
  {
    "job_id": 327496,
    "job_title": "Senior Data Scientist",
    "job_title_short": "Senior Data Scientist",
    "company_name": "Glocomms",
    "job_country": "United States",
    "salary_year_avg": "475000.0"
  },
  {
    "job_id": 1131472,
    "job_title": "Data Scientist",
    "job_title_short": "Data Scientist",
    "company_name": "Algo Capital Group",
    "job_country": "United States",
    "salary_year_avg": "375000.0"
  },
  {
    "job_id": 627602,
    "job_title": "Senior Data Scientist",
    "job_title_short": "Senior Data Scientist",
    "company_name": "Algo Capital Group",
    "job_country": "United States",
    "salary_year_avg": "375000.0"
  },
  {
    "job_id": 1742633,
    "job_title": "Head of Data Science",
    "job_title_short": "Data Scientist",
    "company_name": "Demandbase",
    "job_country": "United States",
    "salary_year_avg": "351500.0"
  },
  {
    "job_id": 551497,
    "job_title": "Head of Data Science",
    "job_title_short": "Data Scientist",
    "company_name": "Demandbase",
    "job_country": "United States",
    "salary_year_avg": "324000.0"
  },
  {
    "job_id": 1161630,
    "job_title": "Director of Data Science & Analytics",
    "job_title_short": "Data Scientist",
    "company_name": "Reddit",
    "job_country": "United States",
    "salary_year_avg": "313000.0"
  },
  {
    "job_id": 1080763,
    "job_title": "Sr. Director - Data Science",
    "job_title_short": "Senior Data Scientist",
    "company_name": "Indeed",
    "job_country": "United States",
    "salary_year_avg": "310000.0"
  },
  {
    "job_id": 91852,
    "job_title": "Senior Data Scientist",
    "job_title_short": "Senior Data Scientist",
    "company_name": "Top Artificial Intelligence Company",
    "job_country": "United States",
    "salary_year_avg": "300000.0"
  }
]
*/