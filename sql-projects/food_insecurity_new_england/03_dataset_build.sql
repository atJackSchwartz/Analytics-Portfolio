-- Purpose: Build final dataset linking CMS and food insecurity 
-- Part of the final dataset for food/health analysis
-- Author Jack Schwartz

DROP TABLE IF EXISTS public.component_a_2021;
CREATE TABLE public.component_a_2021 AS
SELECT
  c.year AS year,
  c.state_abbr AS state,
  c.county AS county,
  c.ffs_beneficiaries AS "# FFS BENEFICIARIES",
  c.avg_risk_score AS "AVG RISK SCORE",
  c.er_visits_per_1000 AS "ER VISITS PER 1000",
  f.percent_food_insecure AS "% FOOD INSECURE"
FROM public.cms_clean c
LEFT JOIN public.food_clean f
  ON f.state_abbr = c.state_abbr
 AND UPPER(f.county) = UPPER(c.county)
WHERE c.year = 2021
  AND c.age_lvl = 'All'       
  AND c.state_abbr IN ('ME','NH','VT','MA','RI','CT')
  AND c.ffs_beneficiaries >= 10000;
