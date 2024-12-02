/* 
Question: What are the most in-demand skills for data scientists? 
- Join job postings to skills tables using an inner join, similar to query 2
- Calculates the percentage of jobs that require each skill
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
    jp.job_title_short LIKE '%Data Scientist'
GROUP BY
    s.skills
ORDER BY
    number_of_jobs DESC
LIMIT 10;

/*
[
  {
    "skills": "python",
    "number_of_jobs": "140012",
    "percent": "14.2"
  },
  {
    "skills": "sql",
    "number_of_jobs": "97835",
    "percent": "9.9"
  },
  {
    "skills": "r",
    "number_of_jobs": "72526",
    "percent": "7.4"
  },
  {
    "skills": "sas",
    "number_of_jobs": "35934",
    "percent": "3.6"
  },
  {
    "skills": "tableau",
    "number_of_jobs": "35472",
    "percent": "3.6"
  },
  {
    "skills": "aws",
    "number_of_jobs": "33779",
    "percent": "3.4"
  },
  {
    "skills": "spark",
    "number_of_jobs": "30991",
    "percent": "3.1"
  },
  {
    "skills": "azure",
    "number_of_jobs": "27227",
    "percent": "2.8"
  },
  {
    "skills": "tensorflow",
    "number_of_jobs": "24261",
    "percent": "2.5"
  },
  {
    "skills": "excel",
    "number_of_jobs": "20886",
    "percent": "2.1"
  }
]
*/