-- ============================================================================
-- 05_SEARCH.SQL — Cortex Search for Digital Islamic Banking
-- ============================================================================
USE DATABASE ISLAMIC_DIGITAL_BANKING;
USE SCHEMA SEARCH;

CREATE OR REPLACE CORTEX SEARCH SERVICE SEARCH.PRODUCT_DOCS_SEARCH
  ON CONTENT
  ATTRIBUTES PRODUCT_TYPE, SHARIAH_STATUS
  WAREHOUSE = DIGIBANK_WH
  TARGET_LAG = '1 hour'
AS (
  SELECT * FROM RAW.PRODUCT_DOCS
);
