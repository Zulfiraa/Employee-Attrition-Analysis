# Employee-Attrition-Analysis

## Business Problem
The company has an employee attrition rate of 17.91%, with 878 employees leaving out of 4,902. This level of turnover may increase recruitment costs and affect workforce stability. The company needs to identify the main factors driving attrition and develop targeted strategies to retain high-risk employees.
## Questions (KPIs)
- Which departments have the highest attrition rate?
- Which job roles experience the highest employee turnover?
- Does overtime contribute to higher attrition?
- Is employee burnout associated with attrition?
- How does salary/income relate to employee attrition?
- Does lack of promotion contribute to employees leaving?
- Does work-life balance affect attrition?
- Which employee groups are most at risk of leaving?
- What retention strategies should HR prioritize?
## Tools Used
- SQL : 
## Dataset
[Employee Attrition & HR Analytics 2026](https://www.kaggle.com/datasets/uditjain13/employee-attrition-and-hr-analytics-2026)
## Process

## Results
### KPI Overview
| KPI              |     Result |
| ---------------- | ---------: |
| Total Employees  |  **4,902** |
| Employees Left   |    **878** |
| Employees Stayed |  **4,024** |
| Attrition Rate   | **17.91%** |

### Attrition by Department & Job Role
<p align="center">
<img width="45%" alt="Employee Attrition Rate by Departement" src="https://github.com/user-attachments/assets/1e5b42df-71db-49f9-8a67-8c96d7079ce4" />
<img width="45%" alt="Employee Attrition Rate by Job Role" src="https://github.com/user-attachments/assets/34e4a121-b8ca-4bb2-a878-fa4e062536e1" />
</p>

Customer Support roles show the highest attrition rates, with Support Team Lead (25.37%) and Support Specialist (25.00%) ranking highest. This suggests that Customer Support should be prioritized for further investigation.

### Analyze Potential Attrition Factors
The variables used include:
- monthly_income
- years_at_company
- commute_minutes
- overtime_hours_per_week
- burnout_score
- work_life_balance_score

Top 10 highest attrition roles show relatively high burnout and overtime levels, while Support Specialist has the lowest average monthly income.
| Department       | Job Role                 | Employees | Left | Attrition Rate | Avg. Income | Avg. Years | Avg. Commute (min) | Avg. Overtime (hrs) | Avg. Burnout | Avg. Work-Life Balance |
| ---------------- | ------------------------ | --------: | ---: | -------------: | ----------: | ---------: | -----------------: | ------------------: | -----------: | ---------------------: |
| Customer Support | Support Team Lead        |       201 |   51 |     **25.37%** |   $5,890.87 |       8.04 |              30.79 |                7.86 |         4.38 |                   5.95 |
| Customer Support | Support Specialist       |       216 |   54 |     **25.00%** |   $4,730.34 |       5.98 |              31.48 |                7.55 |         4.37 |                   6.11 |
| Marketing        | Content Strategist       |       136 |   33 |     **24.26%** |   $6,000.72 |       6.25 |              32.52 |                6.76 |         4.27 |                   6.21 |
| Sales            | Account Executive        |       269 |   63 |     **23.42%** |   $6,460.97 |       5.93 |              30.48 |                8.44 |         4.44 |                   5.90 |
| Human Resources  | Recruiter                |        69 |   16 |     **23.19%** |   $5,396.59 |       5.71 |              28.19 |                5.87 |         4.00 |                   6.38 |
| Customer Support | Customer Success Manager |       211 |   45 |     **21.33%** |   $6,006.43 |       7.91 |              30.69 |                7.98 |         4.47 |                   5.82 |
| Finance          | Finance Manager          |       138 |   29 |     **21.01%** |   $8,038.04 |       7.64 |              31.26 |                6.78 |         3.88 |                   6.22 |
| Sales            | Sales Development Rep    |       251 |   51 |     **20.32%** |   $6,101.65 |       5.67 |              33.46 |                8.51 |         4.44 |                   5.85 |
| Finance          | Financial Analyst        |       141 |   28 |     **19.86%** |   $6,255.34 |       6.07 |              30.18 |                6.15 |         4.16 |                   6.25 |
| Marketing        | Growth Manager           |       154 |   30 |     **19.48%** |   $7,396.07 |       7.71 |              32.03 |                6.78 |         4.09 |                   6.09 |



## Business Recommendation
