\# Excel Project: Chronic Disease Prevalence Analysis



\## Overview

This project analyzes the prevalence of chronic conditions among seniors (65+) across U.S. Census Districts, with a focus on three conditions: \*\*Chronic Kidney Disease, Depression, and Cancer\*\*.  

The analysis was completed in Excel using the CMS Chronic Conditions dataset (2020) and U.S. Census population data. The goal was to calculate population-weighted prevalence at the district level to inform potential market expansion decisions for a health insurance company.



---



\## Approach

1\. \*\*Data Preparation\*\*  

&nbsp;  - Imported CMS chronic conditions data (2020).  

&nbsp;  - Filtered to \*\*age group 65+\*\*.  

&nbsp;  - Mapped each state to its U.S. Census District using the Census district definitions file.  



2\. \*\*Weighting by Population\*\*  

&nbsp;  - For each Census District, calculated a \*\*population-weighted average prevalence\*\*:  

&nbsp;    \\\[

&nbsp;    \\text{District Prevalence} = \\frac{\\sum (\\text{State Prevalence} \\times \\text{State Population})}{\\sum \\text{State Population}}

&nbsp;    \\]  



3\. \*\*Conditions Analyzed\*\*  

&nbsp;  - Chronic Kidney Disease (CKD)  

&nbsp;  - Depression  

&nbsp;  - Cancer  



4\. \*\*Outputs\*\*  

&nbsp;  - District-level prevalence tables for the three conditions.  

&nbsp;  - Example calculation shown for one district to illustrate methodology.  

&nbsp;  - Clean, formatted Excel workbook with all calculations visible.



---



\## Key Skills Demonstrated

\- Using \*\*Excel formulas and pivot tables\*\* for large dataset manipulation.  

\- Applying \*\*population weighting\*\* to calculate meaningful aggregated statistics.  

\- Structuring a workbook so that the methodology is \*\*transparent and reproducible\*\*.  

\- Communicating results clearly with tables and intermediate calculations.  



---



\## Notes 

\- All calculations done in Excel (no external code or tools).  

