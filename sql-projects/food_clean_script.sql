DROP TABLE IF EXISTS public.food_clean;
CREATE TABLE public.food_clean AS
WITH food_seq AS (
  SELECT
    ROW_NUMBER() OVER (ORDER BY ctid) AS rid,
    TRIM(county_txt) AS county_txt,
    TRIM(food_insecure_count_txt) AS food_ct_txt,
    TRIM(county_value_pct_txt) AS pct_txt
  FROM public.food_raw
),
state_names AS (
  SELECT * FROM (VALUES
    ('Maine','ME'), ('New Hampshire','NH'), ('Vermont','VT'),
    ('Massachusetts','MA'), ('Rhode Island','RI'), ('Connecticut','CT')
  ) AS s(state_name, state_abbr)
),
flagged AS (
  SELECT
    f.*,
    CASE WHEN f.county_txt IN (SELECT state_name FROM state_names) THEN 1 ELSE 0 END AS is_state_header
  FROM food_seq f
),
grouped AS (
  SELECT
    f.*,
    SUM(is_state_header) OVER (ORDER BY rid ROWS UNBOUNDED PRECEDING) AS grp
  FROM flagged f
),
with_state AS (
  SELECT
    g.rid,
    COALESCE(
      MAX(CASE WHEN g.is_state_header=1 THEN g.county_txt END)
        OVER (PARTITION BY g.grp),
      g.county_txt
    ) AS state_name_filled,
    g.county_txt AS raw_county,
    g.food_ct_txt,
    g.pct_txt,
    g.is_state_header
  FROM grouped g
)
SELECT
  sn.state_abbr AS state_abbr,
  TRIM(raw_county) AS county,
  NULLIF(REPLACE(food_ct_txt, ',', ''), '')::INT AS food_insecure_count,
  NULLIF(REPLACE(REPLACE(pct_txt, '%', ''), ',', ''), '')::NUMERIC(5,2) AS percent_food_insecure
FROM with_state ws
JOIN state_names sn ON ws.state_name_filled = sn.state_name
-- drop the state header rows, keep counties only
WHERE ws.is_state_header = 0;   
