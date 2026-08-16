# Employee-Attrition-Analysis
The project analyzes employee data to identify attrition patterns across departments and job roles. The analysis includes data validation, attrition rate analysis, comparison of employees who stayed and left, identification of key attrition related factors, and data-driven retention recommendations.
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
- MySQL  : data querying, data cleaning, aggregation, and analysis
- SQL    : calculating attrition rates, grouping employees, and comparing attrition-related factors
- Excel  : data validation and visualization
- GitHub : project documentation, SQL scripts, and portfolio presentation

## Dataset
Data used: [Employee Attrition & HR Analytics 2026](https://www.kaggle.com/datasets/uditjain13/employee-attrition-and-hr-analytics-2026)
## Process
- Validate the data by checking for missing values, duplicates, inconsistencies, and anomalies.
- Clean and prepare the data by ensuring consistent data types, formats, and values.
- Calculate the overall attrition rate and compare employees who stayed with those who left.
- Analyze attrition by department and job role to identify high-risk employee groups.
- Analyze potential attrition factors, including income, overtime, burnout, commute time, and work-life balance.
- Compare employees who stayed and those who left based on average attrition factors
- Summarize key findings and develop data-driven retention recommendations based on the analysis.

Code : [SQL Code](./Employee%20Attrition%20Analysis.sql)

## Results
### KPI Overview
<div align="center">
  
| KPI              |     Result |
| ---------------- | ---------: |
| Total Employees  |  **4,902** |
| Employees Left   |    **878** |
| Employees Stayed |  **4,024** |
| Attrition Rate   | **17.91%** |

</div>

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

### Comparison Employees Who Stayed vs Left
<div align="center">
  
| Metric                 |    Stayed |      Left |  Difference | % Difference |
| ---------------------- | --------: | --------: | ----------: | -----------: |
| Avg. Monthly Income    | $7,054.90 | $6,694.50 |    -$360.40 |   **-5.11%** |
| Avg. Years at Company  |      6.82 |      6.51 | -0.31 years |   **-4.55%** |
| Avg. Commute           | 30.72 min | 33.03 min |   +2.31 min |   **+7.52%** |
| Avg. Overtime          |  6.41 hrs |  8.74 hrs |   +2.33 hrs |  **+36.35%** |
| Avg. Burnout           |      3.85 |      5.11 |       +1.26 |  **+32.73%** |
| Avg. Work-Life Balance |      6.31 |      5.62 |       -0.69 |  **-10.94%** |


</div>

Four of the six metrics analyzed show notable differences between employees who stayed and those who left, highlighting two key areas for further analysis: Work Conditions and Compensation.
<p align="center">
<img width="45%" alt="Work Conditions" src="https://github.com/user-attachments/assets/f9f29d22-4bed-44ea-983c-59df6d66e0d5" />
<img width="45%" alt="Compensation" src="https://github.com/user-attachments/assets/035b90a4-27a0-4172-a9df-ecaba2e77130" />
</p>

Employees who left the company showed higher overtime, burnout levels and lower work life balance compared with employees who stayed. They also had slightly lower average monthly income and longer commute times. Among these factors, burnout and overtime show the most noticeable differences, suggesting that workload and employee well-being should be prioritized in retention strategies.

## Business Recommendation

| Department / Job Role                                               | Key Finding                                                                                             | Recommended Action                                                                                                                                  |
| ------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Customer Support – Support Team Lead & Support Specialist** | Highest attrition rates (25.37% & 25.00%), with relatively high levels of burnout and overtime.                       | **Review workload and staffing levels**, redistribute customer cases, and limit excessive overtime. Provide additional support during peak periods. |
| **Customer Support – Customer Success Manager**               | Attrition rate of 21.33%, highest burnout (4.47), 7.98 hours/week of overtime, and low work-life balance (5.82). | **Reduce workload pressure** through better client allocation, realistic performance targets, and regular workload reviews.                         |
| **Sales – Account Executive & Sales Development Rep**         | Attrition rates of 23.42% and 20.32%, with very high overtime (8.44–8.51 hours/week) and a burnout score of 4.44.          | **Review sales targets and workload**, improve team capacity, and ensure targets are aligned with available resources.                              |
| **Marketing – Content Strategist**                            | Attrition 24.26%, burnout 4.27 and overtime 6.76 hrs/week                                               | **Improve workload planning and project allocation**, especially during periods with multiple campaigns or tight deadlines.                         |
| **Finance – Finance Manager**                                 | Attrition rate of 21.01%, despite relatively high income ($8,038).                                                | **Look beyond compensation** by reviewing workload, management pressure, career progression, and work-life balance.                                 |
| **High-Attrition, Lower-Income Roles**                        | Support Specialist have the lowest income ($4,730) as well as high attrition.                         | **Conduct a compensation review** and assess whether pay is competitive relative to workload and job responsibilities.                              |
| **All High-Risk Roles**                                       | Employees who left had higher overtime (8.74 vs 6.41) and burnout (5.11 vs 3.85)                        | **Establish an early-warning monitoring system** using overtime, burnout, engagement, and attrition indicators.                                     |

