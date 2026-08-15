-- ============================================================================
-- 07_SEMANTIC_VIEW.SQL — Semantic View for Digital Islamic Banking
-- ============================================================================
USE DATABASE ISLAMIC_DIGITAL_BANKING;
USE SCHEMA APP;

CREATE OR REPLACE SEMANTIC VIEW APP.DIGITAL_BANKING_ANALYTICS
  COMMENT = 'Digital Islamic banking customer, deposit, engagement, and campaign analytics'
AS
  TABLES (
    CURATED.CUSTOMER_360 AS customer_360,CURATED.DEPOSIT_GROWTH_METRICS AS deposit_growth_metrics,CURATED.CHURN_RISK_SCORE AS churn_risk_score,CURATED.CAMPAIGN_ROI AS campaign_roi
  );
