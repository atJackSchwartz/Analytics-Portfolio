-- Purpose: Clean and normalize the cms dataset
-- Part of the final dataset for food/health analysis
-- Author Jack Schwartz

DROP TABLE IF EXISTS public.cms_clean;
CREATE TABLE public.cms_clean AS
WITH base AS (
  SELECT
    NULLIF(TRIM(year_txt), '')::INT AS year,
    TRIM(bene_geo_desc_txt) AS geo_desc,
    TRIM(bene_age_lvl_txt) AS age_lvl,
    NULLIF(REPLACE(TRIM(benes_ffs_cnt_txt), ',', ''), '') AS ffs_txt,
    NULLIF(REPLACE(TRIM(bene_avg_risk_scre_txt), ',', ''), '') AS risk_txt,
    NULLIF(REPLACE(TRIM(er_visits_per_1000_benes_txt), ',', ''), '') AS er_txt
  FROM public.cms_raw
)
SELECT
  year,
  UPPER(SPLIT_PART(geo_desc, '-', 1)) AS state_abbr,
  TRIM(SPLIT_PART(geo_desc, '-', 2)) AS county,
  age_lvl,
  NULLIF(ffs_txt,  '*')::INT AS ffs_beneficiaries,
  NULLIF(risk_txt, '*')::NUMERIC(10,4) AS avg_risk_score,
  NULLIF(er_txt,   '*')::NUMERIC(10,2) AS er_visits_per_1000
FROM base
--- keep rows that look like counties: "AA-County"
WHERE geo_desc LIKE '__-%';
