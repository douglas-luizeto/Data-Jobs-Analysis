/*
Question: What are the best companies in terms of salary and number of positions available?
- Identify the number of jobs, average, minimum, and maximum salary for each one
- Order by: avg salary, min salary, max salary and number of jobs, according to the job-seeker's priorities
- Focus on job postings with specified salaries
- Focus on job postings that allow remote work
- Focus on job postings from the US
Goal: Highlight the skillsets required for high-paying Data Scientist roles
*/

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
    COUNT(jp.company_id) >= 5 AND 
    MIN(jp.salary_year_avg) >= 150000
ORDER BY
    min_salary DESC,
    avg_salary DESC,
    max_salary DESC,
    job_postings DESC
LIMIT 10;

/*
[
  {
    "company_id": 23994,
    "name": "Reddit",
    "job_postings": "6",
    "avg_salary": 250313,
    "min_salary": 229000,
    "max_salary": 313000
  },
  {
    "company_id": 191,
    "name": "SoFi",
    "job_postings": "5",
    "avg_salary": 207044,
    "min_salary": 198875,
    "max_salary": 213173
  },
  {
    "company_id": 102,
    "name": "Atlassian",
    "job_postings": "6",
    "avg_salary": 209937,
    "min_salary": 189000,
    "max_salary": 219500
  },
  {
    "company_id": 301,
    "name": "Gopuff",
    "job_postings": "6",
    "avg_salary": 198207,
    "min_salary": 167238,
    "max_salary": 219000
  },
  {
    "company_id": 21,
    "name": "Meta",
    "job_postings": "6",
    "avg_salary": 192750,
    "min_salary": 164000,
    "max_salary": 198500
  },
  {
    "company_id": 2587,
    "name": "Storm3",
    "job_postings": "11",
    "avg_salary": 190682,
    "min_salary": 160000,
    "max_salary": 210000
  },
  {
    "company_id": 1293,
    "name": "Lawrence Harvey",
    "job_postings": "6",
    "avg_salary": 186667,
    "min_salary": 160000,
    "max_salary": 237500
  },
  {
    "company_id": 3013,
    "name": "Averity",
    "job_postings": "7",
    "avg_salary": 203571,
    "min_salary": 157500,
    "max_salary": 250000
  },
  {
    "company_id": 7114,
    "name": "Home Depot / THD",
    "job_postings": "5",
    "avg_salary": 212000,
    "min_salary": 150000,
    "max_salary": 280000
  },
  {
    "company_id": 8871,
    "name": "Intelletec",
    "job_postings": "9",
    "avg_salary": 169167,
    "min_salary": 150000,
    "max_salary": 200000
  }
]
*/