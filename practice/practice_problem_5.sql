SELECT
    sd.skills,
    AVG(jpf.salary_year_avg) AS average_salary_for_skill,
    COUNT(sjd.job_id) AS number_of_job_postings
FROM
    job_postings_fact jpf
LEFT JOIN
    skills_job_dim sjd ON jpf.job_id = sjd.job_id
LEFT JOIN skills_dim sd ON sd.skill_id = sjd.skill_id
GROUP BY
    1
HAVING
    AVG(salary_year_avg) IS NOT NULL
ORDER BY
    average_salary_for_skill DESC;