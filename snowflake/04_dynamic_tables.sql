-- ============================================================================
-- 04_DYNAMIC_TABLES.SQL — Curated layer for Digital Islamic Banking
-- ============================================================================
USE DATABASE ISLAMIC_DIGITAL_BANKING;
USE SCHEMA CURATED;

-- CUSTOMER_360: Real-time customer profile with product holdings, activity, and engagement score
-- Source: CUSTOMERS, TRANSACTIONS, DEPOSITS, APP_EVENTS
CREATE OR REPLACE DYNAMIC TABLE CURATED.CUSTOMER_360
  TARGET_LAG = '5 minutes'
  WAREHOUSE = DIGIBANK_WH
AS
SELECT * FROM RAW.CUSTOMERS;
-- TODO: Replace with actual join/aggregation logic per demo

-- DEPOSIT_GROWTH_METRICS: Deposit growth by segment, product type, and acquisition cohort
-- Source: DEPOSITS, CUSTOMERS
CREATE OR REPLACE DYNAMIC TABLE CURATED.DEPOSIT_GROWTH_METRICS
  TARGET_LAG = '5 minutes'
  WAREHOUSE = DIGIBANK_WH
AS
SELECT * FROM RAW.DEPOSITS;
-- TODO: Replace with actual join/aggregation logic per demo

-- CHURN_RISK_SCORE: Customer churn risk scoring based on engagement and transaction patterns
-- Source: CUSTOMERS, APP_EVENTS, TRANSACTIONS
CREATE OR REPLACE DYNAMIC TABLE CURATED.CHURN_RISK_SCORE
  TARGET_LAG = '5 minutes'
  WAREHOUSE = DIGIBANK_WH
AS
SELECT * FROM RAW.CUSTOMERS;
-- TODO: Replace with actual join/aggregation logic per demo

-- CAMPAIGN_ROI: Marketing campaign performance with attribution and ROI calculation
-- Source: CAMPAIGNS, CUSTOMERS, TRANSACTIONS
CREATE OR REPLACE DYNAMIC TABLE CURATED.CAMPAIGN_ROI
  TARGET_LAG = '5 minutes'
  WAREHOUSE = DIGIBANK_WH
AS
SELECT * FROM RAW.CAMPAIGNS;
-- TODO: Replace with actual join/aggregation logic per demo

