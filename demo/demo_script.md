# Digital Islamic Banking

**Indonesia - Islamic Finance**
Use case: Digital Banking Analytics

> Customer analytics for Indonesia's digital Islamic banking revolution — ML.FORECAST predicts deposit growth, Dynamic Tables build real-time customer 360 views, and Cortex AI generates personalized product recommendations.

## Why Snowflake

Snowflake powers digital Islamic banking analytics — Dynamic Tables maintain real-time customer profiles, ML.FORECAST projects deposit trajectories, and Cortex AI personalizes Shariah-compliant product recommendations at scale

- **ML.FORECAST on deposit growth by segment** - Only demo forecasting Islamic banking deposit trajectories by customer cohort
- **AI-personalized product recommendations** - Cortex AI generates Shariah-compliant product suggestions at customer level
- **Customer 360 via Dynamic Tables** - Real-time customer profile from 10M+ app events and 5M transactions
- **Indonesian digital Islamic banking context** - 270M population, 87% Muslim, 66% unbanked — massive untapped market

## What is deployed

| | |
|---|---|
| Database | `ID_ISLAMIC_FINANCE_DIGITAL` |
| Service | `ID_ISLAMIC_FINANCE_DIGITAL_APP` |
| Compute pool | `SEA_DEMOS_INDONESIA_POOL` |
| Dimension table | `RAW.PRODUCT_DOCS` (20 rows) |
| Fact table | `RAW.APP_EVENTS` (250,000 rows, 90 days) |
| Curated layer | `CURATED.PERFORMANCE_SUMMARY`, `CURATED.TREND_ANALYSIS`, `CURATED.KPI_SUMMARY` |
| Currency | IDR (Rp) |

Regions in play: Jakarta, North Sumatra, Riau, East Kalimantan, Sulawesi
Segments: Wadiah Savings, Mudharabah Deposit, Hasanah Card, Digital Financing

Dynamic tables are created suspended and refreshed on demand:

```bash
./refresh_demo_data.sh ID_ISLAMIC_FINANCE_DIGITAL
```

## KPI cards

Every card below is served live from `CURATED.KPI_SUMMARY`. The app keeps the
original literal as a fallback, so it still renders if Snowflake is unreachable.

| Card | Value | Backed by |
|---|---|---|
| Digital Islamic AUM | `Rp 8.4T` | total across Product Docs |
| Active Users | `2.1M` | total across Product Docs |
| Shariah Compliance | `100%` | average per event |
| Products Launched | `12` | average per event |
| App DAU | `840K` | total across Product Docs |
| Conversion Rate | `14%` | average per event |
| Avg Investment | `Rp 4.8M` | average per event |


## Demo flow

1. Digital Overview
2. Customer Intelligence
3. AI Personalization
4. Ask AI
5. Architecture & Data

## Talking points

- **500,000 customers** - digital Islamic banking users (42% YoY growth)
- **Rp 12T deposits** - across Wadiah and Mudharabah products
- **8,500 at-risk** - high-value customers with elevated churn score
- **10M app events** - mobile engagement data points
- **3.2x ROI** - Ramadan campaign performance

## Business impact

- Indonesia's Islamic banking assets reached Rp 700 trillion (US$45B) in 2023 (OJK)
- Indonesian digital banking users grew 35% YoY to 120 million in 2023 (BI)
- Islamic banking penetration is only 7% vs OJK target of 15% by 2025 (OJK)
- Customer churn reduction of 5% can increase banking profits by 25-85% (Bain & Company)

---
Generated from `generator/demo_specs/aws-indonesia-islamic-finance-digital.json`. Do not hand-edit: run
`python3 generator/gen_repo_docs.py aws-indonesia-islamic-finance-digital` instead.
