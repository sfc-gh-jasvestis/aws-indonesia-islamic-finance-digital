-- ============================================================================
-- 11_TASK_PIPELINE.SQL — Task DAG for Digital Islamic Banking
-- ============================================================================
USE DATABASE ISLAMIC_DIGITAL_BANKING;
USE SCHEMA APP;

CREATE OR REPLACE TASK APP.TASK_REFRESH_CUSTOMER_360
  WAREHOUSE = DIGIBANK_WH
  SCHEDULE = 'USING CRON 0 */1 * * * UTC'
  COMMENT = 'Refresh customer 360 profiles with latest activity'
AS
  SELECT 1; -- Replace with actual refresh logic

CREATE OR REPLACE TASK APP.TASK_SCORE_CHURN
  WAREHOUSE = DIGIBANK_WH
  AFTER APP.TASK_REFRESH_CUSTOMER_360
  COMMENT = 'Recalculate churn risk scores'
AS
  SELECT 1; -- Replace with actual refresh logic

CREATE OR REPLACE TASK APP.TASK_FORECAST_DEPOSITS
  WAREHOUSE = DIGIBANK_WH
  AFTER APP.TASK_SCORE_CHURN
  COMMENT = 'Run deposit growth forecast by segment'
AS
  SELECT 1; -- Replace with actual refresh logic

ALTER TASK APP.TASK_FORECAST_DEPOSITS RESUME;
ALTER TASK APP.TASK_SCORE_CHURN RESUME;
ALTER TASK APP.TASK_REFRESH_CUSTOMER_360 RESUME;
