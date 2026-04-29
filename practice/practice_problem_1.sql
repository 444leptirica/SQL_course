SELECT job_title_short, salary_year_avg
FROM job_postings_fact
WHERE (job_title_short = 'Data Analyst' AND salary_year_avg > 100000) AND (job_title_short = 'Business Analyst' AND salary_year_avg > 70000) AND job_location = 'Boston, MA' OR job_location = 'Anywhere';

SELECT 
    job_title_short, salary_year_avg, 
    job_via, 
    job_location
FROM 
    job_postings_fact
WHERE 
    job_location IN ('Boston, MA', 'Anywhere') AND 
    (
        (job_title_short = 'Data Analyst' AND salary_year_avg > 100000) OR (job_title_short = 'Business Analyst' AND salary_year_avg > 70000)
    )
ORDER BY 
    salary_year_avg DESC;