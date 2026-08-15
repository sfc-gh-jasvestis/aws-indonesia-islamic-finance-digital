# Demo Script: Digital Islamic Banking
## ~4-Minute Recorded Walkthrough
**Format**: Screen recording with voiceover
**Target**: Customer meeting / booth loop / social share
**Narrative**: "Snowflake powers digital Islamic banking analytics — Dynamic Tables maintain real-time customer profiles, ML.FORECAST projects deposit trajectories, and Cortex AI personalizes Shariah-compliant product recommendations at scale"
**Demo Mode**: Open app with `?demo=true` for presenter notes

---

## Two Personas

| Persona | Role | Tool | What they care about |
|---|---|---|---|
| **Andi Rachman** | Chief Digital Officer | React App (SPCS) | Digital adoption, customer acquisition cost, deposit growth, app engagement metrics |
| **Nur Aini** | Data Analytics Manager | Amazon QuickSight | Churn prediction, product cross-sell, customer segmentation, campaign ROI |

---

## What's Built

| Layer | Component | Detail |
|---|---|---|
| **RAW** | 6 tables | CUSTOMERS (500000), TRANSACTIONS (5000000), DEPOSITS (1000000), APP_EVENTS (10000000), CAMPAIGNS (5000), PRODUCT_DOCS (40) |
| **CURATED** | 4 Dynamic Tables | CUSTOMER_360, DEPOSIT_GROWTH_METRICS, CHURN_RISK_SCORE, CAMPAIGN_ROI |
| **ML** | ML.FORECAST | Forecasting + anomaly detection |
| **AI** | COMPLETE, SUMMARIZE, AI_CLASSIFY | Classification + extraction |
| **Search** | Cortex Search | 40 documents indexed |
| **Agent** | DIGITAL_BANKING_AGENT | Semantic View + Search tools |


---

## The Story

Indonesia's 270 million population includes 87% Muslim, yet Islamic banking market share is only 7%. A digital Shariah-compliant neobank has acquired 500,000 customers with 42% annual growth, but must now reduce churn among high-value segments and personalize product recommendations to convert savings customers into full-relationship clients — all while maintaining Shariah compliance.

---

## Script

### [0:00–0:45] DIGITAL OVERVIEW

**Show**: Digital Overview tab

> "500,000 digital Islamic banking customers — 42% growth year-on-year."

**Action**: Point at 500K customers and 42% growth

### [0:45–1:30] CUSTOMER INTELLIGENCE

**Show**: Customer Intelligence tab

> "Young professionals (25-34) driving 60% of new deposit growth."

**Action**: Show deposit growth by segment chart

### [1:30–2:15] AI PERSONALIZATION

**Show**: AI Personalization tab

> "Cortex AI generates personalized product recommendations per customer segment."

**Action**: Show AI recommendation examples

### [2:15–3:00] ASK AI

**Show**: Ask AI tab

> "Andi asks: 'What's our digital customer acquisition rate this month?'"

**Action**: Type acquisition question

### [3:00–3:45] ARCHITECTURE & DATA

**Show**: Architecture & Data tab

> "Six Snowflake capabilities, six AWS services."

**Action**: Walk through architecture diagram


---

## Key Demo Differentiators

1. **ML.FORECAST on deposit growth by segment** — Only demo forecasting Islamic banking deposit trajectories by customer cohort
2. **AI-personalized product recommendations** — Cortex AI generates Shariah-compliant product suggestions at customer level
3. **Customer 360 via Dynamic Tables** — Real-time customer profile from 10M+ app events and 5M transactions
4. **Indonesian digital Islamic banking context** — 270M population, 87% Muslim, 66% unbanked — massive untapped market


---

## Demo Prep Checklist

### Data Verification
- [ ] `SELECT COUNT(*) FROM ISLAMIC_DIGITAL_BANKING.RAW.CUSTOMERS` → 500000
- [ ] `SELECT COUNT(*) FROM ISLAMIC_DIGITAL_BANKING.RAW.TRANSACTIONS` → 5000000
- [ ] `SELECT COUNT(*) FROM ISLAMIC_DIGITAL_BANKING.RAW.APP_EVENTS` → 10000000

### ML Model Verification
- [ ] `SELECT COUNT(*) FROM ISLAMIC_DIGITAL_BANKING.ML.DEPOSIT_GROWTH_FORECAST_RESULTS` → >0

### AI/Agent Verification
- [ ] `SELECT COUNT(*) FROM ISLAMIC_DIGITAL_BANKING.AI.CUSTOMER_CLASSIFICATION` → 500000

