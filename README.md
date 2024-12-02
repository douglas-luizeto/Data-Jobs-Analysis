# Introduction

In this project I look at records from data-related job postings in 2023, gather insights that would benefit potential job-seekers, and publish them in an interactive dashboard. 

### Questions I wanted to answer:

1. What are the highest paying jobs? 
2. What skills are required for these jobs? 
3. What are the best companies in terms of job postings and average salary? 
4. In general, what are the most in demand skills?
5. In general, what skills recieve better compensation? 

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
| Python      | 52322          | 13.5           |
| SQL         | 37586          | 9.7            |
| R           | 31861          | 8.2            |
| SAS         | 17734          | 4.6            |
| Tableau     | 16730          | 4.3            |
| AWS         | 13028          | 3.4            |
| Spark       | 12558          | 3.2            |
| TensorFlow  | 8956           | 2.3            |
| Java        | 8651           | 2.2            |
| Azure       | 8605           | 2.2            |



[Sample SQL Query](/sql_scripts/4_in_demand_skills.sql)

### 5. Highest paid skills 

Comment findings

| Skills        | Average Salary | Minimum Salary | Maximum Salary | Number of Jobs |
|---------------|----------------|----------------|----------------|----------------|
| Airflow       | 170100         | 79000          | 350000         | 154            |
| Go            | 160165         | 37860          | 463500         | 341            |
| BigQuery      | 157302         | 79000          | 280000         | 132            |
| Looker        | 156377         | 61200          | 350000         | 190            |
| Spark         | 153759         | 30000          | 450000         | 971            |
| PyTorch       | 152653         | 51150          | 375000         | 582            |
| TensorFlow    | 150639         | 41500          | 375000         | 647            |
| Scala         | 149419         | 50000          | 375000         | 420            |
| Scikit-learn  | 148188         | 30000          | 375000         | 357            |
| Kafka         | 147417         | 55000          | 375000         | 120            |

[Sample SQL Query](/sql_scripts/5_highest_paid_skills.sql)

# What I learned

Develop sql skills..

# Conclusions

### insights

### closing thoughts