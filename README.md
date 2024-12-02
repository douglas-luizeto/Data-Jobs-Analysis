# Introduction

In this project I look at records from data-related job postings in 2023, gather insights that would benefit potential job-seekers, and publish them in an interactive dashboard. 

### Questions I wanted to answer:

1. What are the highest paying jobs? 
2. What skills are required for these jobs? 
3. What are the best companies in terms of job postings and average salary? 
4. In general, what are the most in demand skills?
5. In general, what skills recieve better compensation? 
6. What could be an optimal skillset for a job-seeker?

I have considered all these questions in terms of: 
- Job role
- Remote vs Onsite
- Job location (Country)

# Tools

- **SQL:** 
- **VSCode:**
- **PowerBI:**

# The Analysis

### The Data

- Share info about data (include model graph)

### 1. Highest paying jobs 

Comment findings

| Job Title                                | Company Name                        | Country       | Average Salary (Year) |
|------------------------------------------|-------------------------------------|---------------|-----------------------|
| Staff Data Scientist/Quant Researcher    | Selby Jennings                      | United States | 550000                |
| Staff Data Scientist - Business Analytics| Selby Jennings                      | United States | 525000                |
| Senior Data Scientist                    | Glocomms                            | United States | 475000                |
| Data Scientist                           | Algo Capital Group                  | United States | 375000                |
| Senior Data Scientist                    | Algo Capital Group                  | United States | 375000                |
| Head of Data Science                     | Demandbase                          | United States | 351500                |
| Head of Data Science                     | Demandbase                          | United States | 324000                |
| Director of Data Science & Analytics     | Reddit                              | United States | 313000                |
| Sr. Director - Data Science              | Indeed                              | United States | 310000                |
| Senior Data Scientist                    | Top Artificial Intelligence Company | United States | 300000                |


[Sample SQL Query](/sql_scripts/1_highest_paying_jobs.sql)

### 2. Skills required for these jobs

Comment findings

| Job Title                         | Company Name                 | Country       | Average Salary (Year) | Skills      | Type             |
|-----------------------------------|------------------------------|---------------|-----------------------|-------------|------------------|
| Data Analyst, Marketing           | Pinterest Job Advertisements | United States | 232423                | sql         | programming      |
| Data Analyst, Marketing           | Pinterest Job Advertisements | United States | 232423                | python      | programming      |
| Data Analyst, Marketing           | Pinterest Job Advertisements | United States | 232423                | r           | programming      |
| Data Analyst, Marketing           | Pinterest Job Advertisements | United States | 232423                | hadoop      | libraries        |
| Data Analyst, Marketing           | Pinterest Job Advertisements | United States | 232423                | tableau     | analyst_tools    |


[Sample SQL Query](/sql_scripts/2_skills_required.sql)

### 3. Finding the best companies

Comment findings

| Company Name         | Job Postings | Average Salary | Minimum Salary | Maximum Salary |
|----------------------|--------------|----------------|----------------|----------------|
| Reddit               | 6            | 250313         | 229000         | 313000         |
| SoFi                 | 5            | 207044         | 198875         | 213173         |
| Atlassian            | 6            | 209937         | 189000         | 219500         |
| Gopuff               | 6            | 198207         | 167238         | 219000         |
| Meta                 | 6            | 192750         | 164000         | 198500         |
| Storm3               | 11           | 190682         | 160000         | 210000         |
| Lawrence Harvey      | 6            | 186667         | 160000         | 237500         |
| Averity              | 7            | 203571         | 157500         | 250000         |
| Home Depot / THD     | 5            | 212000         | 150000         | 280000         |
| Intelletec           | 9            | 169167         | 150000         | 200000         |


[Sample SQL Query](/sql_scripts/3_best_companies.sql)

### 4. In-demand skills

Comment findings

| Skills      | Number of Jobs | Percentage (%) |
|-------------|----------------|----------------|
| Python      | 140012         | 14.2           |
| SQL         | 97835          | 9.9            |
| R           | 72526          | 7.4            |
| SAS         | 35934          | 3.6            |
| Tableau     | 35472          | 3.6            |
| AWS         | 33779          | 3.4            |
| Spark       | 30991          | 3.1            |
| Azure       | 27227          | 2.8            |
| TensorFlow  | 24261          | 2.5            |
| Excel       | 20886          | 2.1            |


[Sample SQL Query](/sql_scripts/4_in_demand_skills.sql)

### 5. Highest paid skills 

Comment findings

[Sample SQL Query](/sql_scripts/5_highest_paid_skills.sql)

### 6. The optimal skillset

Comment findings

[Sample SQL Query](/sql_scripts/6_optimal_skillset.sql)

# What I learned

Develop sql skills..

# Conclusions

### insights

### closing thoughts