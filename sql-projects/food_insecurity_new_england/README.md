# SQL Project: Food Insecurity and ER Utilization in New England

## Overview
This project examines the relationship between **food insecurity**, **emergency room (ER) utilization**, and **average risk scores** across counties in New England.

Two separate datasets (CMS healthcare data and county-level food insecurity data) were cleaned and combined to create a single, analysis-ready dataset. The project emphasizes **data cleaning, standardization, and reliable dataset construction** rather than advanced statistical modeling.

## Objectives
- Clean and standardize raw food insecurity data
- Clean CMS healthcare utilization data
- Join both datasets at the county level
- Produce a final dataset suitable for downstream analysis

## Project Structure
- **01_food_clean.sql**  
  Cleans and standardizes the food insecurity dataset (state, county, percent food insecure).

- **02_cms_clean.sql**  
  Cleans CMS data, including risk scores, ER visits, and fee-for-service beneficiary counts.

- **03_dataset_build.sql**  
  Joins the cleaned food insecurity and CMS datasets and applies required filters.

- **04_dataset_cleanup.sql**  
  Removes duplicate county records and retains the most appropriate row per county.

## Notes
- This project focuses on **SQL data preparation and transformation**
- The final output is a clean, joined dataset designed for analysis or visualization
- Raw source files are not included in this repository
