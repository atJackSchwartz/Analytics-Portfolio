-- Purpose: Cleanup the final dataset, removing any duplicates. 
-- Part of the final dataset for food/health analysis
-- Author Jack Schwartz

DROP TABLE IF EXISTS public.component_a_2021_deduped;
CREATE TABLE public.component_a_2021_deduped AS
SELECT DISTINCT ON (state, county)
  year, state, county,
  "# FFS BENEFICIARIES",
  "AVG RISK SCORE",
  "ER VISITS PER 1000",
  "% FOOD INSECURE"
FROM public.component_a_2021
 -- keep the non-null / larger % value
ORDER BY state, county, "% FOOD INSECURE" DESC; 
