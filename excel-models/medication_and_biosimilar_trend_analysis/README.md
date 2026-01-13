# Medication & Biosimilar Trend Analysis (Excel Model + Presentation)

## Overview
This project analyzes **medical benefit drug cost trends from 2018–2021** and evaluates the **financial impact of biosimilars**. The analysis was completed from the perspective of a Research Analyst supporting the Director of Research at the U.S. FDA.

The goal is to identify key drivers of cost growth and quantify how biosimilar adoption affected 2021 spending. :contentReference[oaicite:0]{index=0}

## Key Questions Answered
- What was the **total change in medication cost PMPM** from 2018 to 2021?
- Which **top 10 medications** had the highest PMPM increases over that period?
- For **Entyvio**, how much of the 2021 cost increase was driven by:
  - increased utilization vs.
  - increased per-patient cost?
- What was the **gross cost impact of biosimilars in 2021**, compared to paying all utilization at reference product prices?

## Methods (High Level)
- Aggregated and cleaned multi-year medical benefit drug data (2018–2021)
- Calculated PMPM trends by medication
- Decomposed co

[200~$ cat > "excel-models/medication_and_biosimilar_trend_analysis/README.md" <<'EOF'
# Medication & Biosimilar Trend Analysis (Excel Model + Presentation)

## Overview
This project analyzes **medical benefit drug cost trends from 2018–2021** and evaluates the **financial impact of biosimilars**. The analysis was completed from the perspective of a Research Analyst supporting the Director of Research at the U.S. FDA.

The goal is to identify key drivers of cost growth and quantify how biosimilar adoption affected 2021 spending. :contentReference[oaicite:0]{index=0}

## Key Questions Answered
- What was the **total change in medication cost PMPM** from 2018 to 2021?
- Which **top 10 medications** had the highest PMPM increases over that period?
- For **Entyvio**, how much of the 2021 cost increase was driven by:
  - increased utilization vs.
  - increased per-patient cost?
- What was the **gross cost impact of biosimilars in 2021**, compared to paying all utilization at reference product prices?

## Methods (High Level)
- Aggregated and cleaned multi-year medical benefit drug data (2018–2021)
- Decomposed coPM trends by medication

cat > "excel-models/medication_and_biosimilar_trend_analysis/README.md" <<'EOF'
# Medication & Biosimilar Trend Analysis (Excel Model + Presentation)

## Overview
This project analyzes **medical benefit drug cost trends from 2018–2021** and evaluates the **financial impact of biosimilars**. The analysis was completed from the perspective of a Research Analyst supporting the Director of Research at the U.S. FDA.

The goal is to identify key drivers of cost growth and quantify how biosimilar adoption affected 2021 spending. :contentReference[oaicite:0]{index=0}

## Key Questions Answered
- What was the **total change in medication cost PMPM** from 2018 to 2021?
- Which **top 10 medications** had the highest PMPM increases over that period?
- For **Entyvio**, how much of the 2021 cost increase was driven by:
  - increased utilization vs.
  - increased per-patient cost?
- What was the **gross cost impact of biosimilars in 2021**, compared to paying all utilization at reference product prices?

## Methods (High Level)
- Aggregated and cleaned multi-year medical benefit drug data (2018–2021)
- Calculated PMPM trends by medication
- Decomposed cost growth into **utilization vs. unit-cost effects**
- Modeled a **counterfactual 2021 scenario** where biosimilar utilization was paid at reference product per-patient costs
- When multiple reference products existed, used the reference drug with the **highest 2021 patient volume**

## Files in This Folder
- `medication_and_biosimilar_trend_analysis.xlsx` — Excel model with calculations and supporting tables
- `medication_and_biosimilar_trend_analysis.pptx` — Executive summary presentation (≤2 slides, excluding title)
- `README.md` — Project overview and methodology

## Deliverable Context
This project was completed as a graduate-level healthcare analytics case study. Final deliverables included:
- A completed Excel analysis
- A PowerPoint presentation of findings
- A concise written summary for an executive audience

## Notes
- Raw datasets are **not included** in this repository.
- Results are based on provided assumptions and are intended for **portfolio demonstration**.
