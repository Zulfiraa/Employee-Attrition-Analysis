CREATE DATABASE hr_analytics;

USE hr_analytics;

DROP TABLE employees;

CREATE TABLE employees (
    Employee_ID INT PRIMARY KEY,
    Age INT,
    Gender varchar(10),
    Marital_Status varchar(100),
    Department VARCHAR(100),
    Job_Role VARCHAR(100),
    Monthly_Income DECIMAL(10,2),
    Years_At_Company INT,
    Commute_Minutes INT,
    Overtime VARCHAR(10),
    Burnout_Score INT,
    Work_Life_Balance_Score INT,
    Attrition VARCHAR(10)
);

SELECT *
FROM employees
LIMIT 10;

SELECT COUNT(*) AS total_data
FROM employees;

#Attrition Rate
SELECT
    COUNT(*) AS total_employees,
    COUNT(CASE WHEN attrition = 'Yes' THEN 1 END) AS employees_left,
    COUNT(CASE WHEN attrition = 'No' THEN 1 END) AS employees_stayed,
    ROUND(
        COUNT(CASE WHEN attrition = 'Yes' THEN 1 END) * 100.0
        / COUNT(*),
        2
    ) AS attrition_rate
FROM employees;

#Attrition Rate Departement
SELECT
    department,
    COUNT(*) AS total_employees,
    COUNT(CASE WHEN attrition = 'Yes' THEN 1 END) AS employees_left,
    ROUND(
        COUNT(CASE WHEN attrition = 'Yes' THEN 1 END) * 100.0
        / COUNT(*),
        2
    ) AS attrition_rate
FROM employees
GROUP BY department
ORDER BY attrition_rate DESC;

#Attrition Rate Job Role
SELECT
    job_role, 
    COUNT(*) AS total_employees,
    COUNT(CASE WHEN attrition = 'Yes' THEN 1 END) AS employees_left,
    ROUND(
        COUNT(CASE WHEN attrition = 'Yes' THEN 1 END) * 100.0
        / COUNT(*),
        2
    ) AS attrition_rate
FROM employees
GROUP BY job_role 
ORDER BY attrition_rate DESC;

SELECT 
    department,
    job_role,
    COUNT(*) AS total_employees,
    COUNT(CASE
        WHEN attrition = 'Yes' THEN 1
    END) AS employees_left,
    ROUND(COUNT(CASE
                WHEN attrition = 'Yes' THEN 1
            END) * 100.0 / COUNT(*),
            2) AS attrition_rate
FROM
    employees
GROUP BY department , job_role
ORDER BY attrition_rate DESC;

#Factors may contribute to employee turnover in these high-risk groups
#1. Monthly Income
SELECT
    department,
    job_role,
    ROUND(AVG(monthly_income), 2) AS avg_monthly_income
FROM employees
GROUP BY department, job_role
ORDER BY avg_monthly_income DESC;

#2. Years at company
SELECT
    department,
    job_role,
    ROUND(AVG(years_at_company), 2) AS avg_years
FROM employees
GROUP BY department, job_role
ORDER BY avg_years DESC;

#3. Commute Minutes
SELECT
    department,
    job_role,
    ROUND(AVG(commute_minutes), 2) AS avg_commute_minutes
FROM employees
GROUP BY department, job_role
ORDER BY avg_commute_minutes DESC;

#4. Overtime
SELECT
    department,
    job_role,
    ROUND(AVG(overtime), 2) AS avg_overtime
FROM employees
GROUP BY department, job_role
ORDER BY avg_overtime DESC;

#5. Burnout
SELECT
    department,
    job_role,
    ROUND(AVG(burnout_score), 2) AS avg_burnout
FROM employees
GROUP BY department, job_role
ORDER BY avg_burnout DESC;

#6. Work Life Balance
SELECT
    department,
    job_role,
    ROUND(AVG(work_life_balance_score), 2) AS avg_work_life_balance
FROM employees
GROUP BY department, job_role
ORDER BY avg_work_life_balance ASC;

#Average factors employees attrition
SELECT
    department,
    job_role,
    COUNT(*) AS total_employees,
    COUNT(CASE WHEN attrition = 'Yes' THEN 1 END) AS employees_left,
    ROUND(
        COUNT(CASE WHEN attrition = 'Yes' THEN 1 END) * 100.0
        / COUNT(*),
        2
    ) AS attrition_rate,
    ROUND(AVG(monthly_income), 2) AS avg_monthly_income,
    ROUND(AVG(years_at_company), 2) AS avg_years,
    ROUND(AVG(commute_minutes), 2) AS avg_commute_minutes,
    ROUND(AVG(overtime), 2) AS avg_overtime,
    ROUND(AVG(burnout_score), 2) AS avg_burnout,
    ROUND(AVG(work_life_balance_score), 2) AS avg_work_life_balance
FROM employees
GROUP BY department, job_role
ORDER BY attrition_rate DESC;

#Comparison average factors employees attrition
SELECT
    attrition,
    ROUND(AVG(monthly_income), 2) AS avg_monthly_income,
    ROUND(AVG(years_at_company), 2) AS avg_years,
    ROUND(AVG(commute_minutes), 2) AS avg_commute_minutes,
    ROUND(AVG(overtime), 2) AS avg_overtime,
    ROUND(AVG(burnout_score), 2) AS avg_burnout,
    ROUND(AVG(work_life_balance_score), 2) AS avg_work_life_balance
FROM employees
GROUP BY attrition;