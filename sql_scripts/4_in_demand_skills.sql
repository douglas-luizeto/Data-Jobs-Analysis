/* 
Question: What are the most in-demand skills for data scientists? 
- Join job postings to skills tables using an inner join, similar to query 2
- Calculate the percentage of jobs that require each skill
- Focus on all job postings
- Goal: Retrieve the top 10 skills with the highest demand in the job market
*/

SELECT
    s.skills,
    COUNT(jp.job_id) AS number_of_jobs,
    ROUND(COUNT(jp.job_id) * 100.0 / SUM(COUNT(*)) OVER(), 1) AS percent
FROM
    job_postings_fact jp
    INNER JOIN skills_job_dim sj ON jp.job_id = sj.job_id
    INNER JOIN skills_dim s ON s.skill_id = sj.skill_id
WHERE
    jp.job_title_short LIKE '%Data Scientist' AND
    jp.job_country = 'United States'
GROUP BY
    s.skills
ORDER BY
    number_of_jobs DESC
LIMIT 10;

/*
[
  {
    "skills": "python",
    "number_of_jobs": "52322",
    "percent": "13.5"
  },
  {
    "skills": "sql",
    "number_of_jobs": "37586",
    "percent": "9.7"
  },
  {
    "skills": "r",
    "number_of_jobs": "31861",
    "percent": "8.2"
  },
  {
    "skills": "sas",
    "number_of_jobs": "17734",
    "percent": "4.6"
  },
  {
    "skills": "tableau",
    "number_of_jobs": "16730",
    "percent": "4.3"
  },
  {
    "skills": "aws",
    "number_of_jobs": "13028",
    "percent": "3.4"
  },
  {
    "skills": "spark",
    "number_of_jobs": "12558",
    "percent": "3.2"
  },
  {
    "skills": "tensorflow",
    "number_of_jobs": "8956",
    "percent": "2.3"
  },
  {
    "skills": "java",
    "number_of_jobs": "8651",
    "percent": "2.2"
  },
  {
    "skills": "azure",
    "number_of_jobs": "8605",
    "percent": "2.2"
  }
]
*/