/* 
Question: What are the highest paying skills for data scientists? 
- Join job postings to skills tables using an inner join, similar to query 4
- Calculate the average, min and max salary for each skill
- Focus on all job postings that have a declared yearly salary
- Goal: Retrieve the top 10 skills with the highest average pay in the job market
*/

SELECT
    s.skills,
    AVG(jp.salary_year_avg)::INT AS avg_salary,
    MIN(jp.salary_year_avg)::INT AS min_salary,
    MAX(jp.salary_year_avg)::INT AS max_salary,
    COUNT(jp.job_id) AS number_of_jobs
FROM
    job_postings_fact jp
    INNER JOIN skills_job_dim sj ON jp.job_id = sj.job_id
    INNER JOIN skills_dim s ON s.skill_id = sj.skill_id
WHERE
    jp.job_title_short LIKE '%Data Scientist' AND
    jp.salary_year_avg IS NOT NULL AND
    jp.job_country = 'United States'
GROUP BY
    s.skills
HAVING
    COUNT(jp.job_id) >= 100
ORDER BY
    avg_salary DESC  
LIMIT 10;

/*
[
  {
    "skills": "airflow",
    "avg_salary": 170100,
    "min_salary": 79000,
    "max_salary": 350000,
    "number_of_jobs": "154"
  },
  {
    "skills": "go",
    "avg_salary": 160165,
    "min_salary": 37860,
    "max_salary": 463500,
    "number_of_jobs": "341"
  },
  {
    "skills": "bigquery",
    "avg_salary": 157302,
    "min_salary": 79000,
    "max_salary": 280000,
    "number_of_jobs": "132"
  },
  {
    "skills": "looker",
    "avg_salary": 156377,
    "min_salary": 61200,
    "max_salary": 350000,
    "number_of_jobs": "190"
  },
  {
    "skills": "spark",
    "avg_salary": 153759,
    "min_salary": 30000,
    "max_salary": 450000,
    "number_of_jobs": "971"
  },
  {
    "skills": "pytorch",
    "avg_salary": 152653,
    "min_salary": 51150,
    "max_salary": 375000,
    "number_of_jobs": "582"
  },
  {
    "skills": "tensorflow",
    "avg_salary": 150639,
    "min_salary": 41500,
    "max_salary": 375000,
    "number_of_jobs": "647"
  },
  {
    "skills": "scala",
    "avg_salary": 149419,
    "min_salary": 50000,
    "max_salary": 375000,
    "number_of_jobs": "420"
  },
  {
    "skills": "scikit-learn",
    "avg_salary": 148188,
    "min_salary": 30000,
    "max_salary": 375000,
    "number_of_jobs": "357"
  },
  {
    "skills": "kafka",
    "avg_salary": 147417,
    "min_salary": 55000,
    "max_salary": 375000,
    "number_of_jobs": "120"
  }
]
*/