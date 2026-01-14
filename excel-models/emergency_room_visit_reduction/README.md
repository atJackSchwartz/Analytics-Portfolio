# Emergency Room Visit Reduction (Excel Model + PowerPoint)

## Context
Good Health Physicians (a primary care provider group carrying global financial risk) is working to reduce avoidable emergency room (ER) utilization. Internal analysis identified **“ready access to care”** as the primary driver of ER visits. :contentReference[oaicite:2]{index=2}

**Baseline + goal**
- Current ER utilization: **525 ER visits per 1,000 members**
- Target: **450 ER visits per 1,000 members by the end of year 3**
- Membership grows annually: **5,000 (Y1), 5,500 (Y2), 6,000 (Y3)**
- Average ER visit cost: **$1,200** (assumed stable over 3 years) 

> “Year One” is defined as the first year after the project is implemented. 

## Objective
Build a **3-year Excel financial model** (fully driven by cell references) comparing three interventions to prevent avoidable ER visits. The model calculates, by year:
- **Gross savings**
- **Total cost**
- **Net savings**

…and supports easy scenario changes by updating assumption cells. 

## Options Evaluated

### Option 1 — Hire an additional practitioner (same-day office access)
- All-in salary: **$90,000/year**, with **3% inflation** in years 2 and 3
- ER reduction impact:
  - **10% in year 1**
  - **+5% in year 2 (incremental over year 1)**
  - **No additional reduction in year 3**
- Offsetting costs:
  - **50%** of avoided ER visits become **same-day office visits** at **$75/visit**
  - **50%** have no offsetting visit cost 

### Option 2 — Open an urgent care center (limited accessibility)
- Existing vacant space is available, but accessible to **40% of members**
- Operating cost: **$115,000/year**, increasing **5% per year**
- ER reduction impact:
  - **15% each year**, but **only for the 40%** with access
- Offsetting costs:
  - Every avoided ER visit becomes an **urgent care visit** at **$150/visit** 

### Option 3 — Add a nurse triage phone line
- Year 1 setup: **$10,000** (one-time)
- Marketing: **$5,000/year**
- Overhead: **$20,000/year**
- ER reduction impact:
  - **10% in year 1**
  - **+5% in year 2 (incremental over year 1)**
  - **No additional reduction in year 3**
- Offsetting costs (distribution of avoided ER visits):
  - **30%** redirected to urgent care at **$150/visit**
  - **40%** redirected to primary care at **$75/visit**
  - **30%** have no offsetting visit cost 

## Deliverables in this Folder
- `emergency_room_visit_reduction.xlsx` — Excel financial model with assumptions, calculations, and year-by-year results
- `emergency_room_visit_reduction.pptx` — Executive summary deck (recommendation + financial/operational rationale)
- `README.md` — Project overview and modeling assumptions

## Notes
- This is a **case study model** built for portfolio demonstration (inputs and outcomes are driven by the provided assumptions).

