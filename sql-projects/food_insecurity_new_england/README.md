\# SQL Project: Food Insecurity and ER Utilization in New England



\## Overview

This project looks at how food insecurity connects with ER visits and average risk scores across counties in New England.  

I worked with two datasets (CMS and food insecurity) and built a cleaned, combined dataset that could be used for analysis.  

The focus is on showing how I clean raw data, join it together, and made sure the final dataset is reliable.



---



\## Project Structure



\- \*\*01\_food\_clean.sql\*\* – Standardizes the food insecurity dataset (state, county, % food insecure).  

\- \*\*02\_cms\_clean.sql\*\* – Cleans CMS data (risk scores, ER visits, FFS beneficiaries).  

\- \*\*03\_dataset\_build.sql\*\* – Joins the cleaned datasets together and filters required parameters.  

\- \*\*04\_dataset\_clean.sql\*\* – Removes duplicate county rows and keeps the best record.  



