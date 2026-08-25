-- ============================================================================
-- 10_ALERTS_NOTIFICATIONS.SQL — Alerts for Digital Islamic Banking
-- ============================================================================
USE DATABASE ISLAMIC_DIGITAL_BANKING;
USE SCHEMA APP;

-- Notification integration (email)
CREATE OR REPLACE NOTIFICATION INTEGRATION aws_indonesia_islamic_finance_digital_EMAIL_INT
  TYPE = EMAIL
  ENABLED = TRUE
  ALLOWED_RECIPIENTS = ('<YOUR_EMAIL>');

-- Alert: DEPOSIT_OUTFLOW_ALERT
CREATE OR REPLACE ALERT APP.DEPOSIT_OUTFLOW_ALERT
  WAREHOUSE = DIGIBANK_WH
  SCHEDULE = '5 MINUTE'
  COMMENT = 'Significant deposit outflow detected'
IF (EXISTS (
  SELECT 1 FROM CURATED.CUSTOMER_360
  WHERE 1=1 -- Condition: Daily net deposit outflow exceeds Rp 50 billion
))
THEN
  CALL SYSTEM$SEND_EMAIL(
    'aws_indonesia_islamic_finance_digital_EMAIL_INT',
    '<YOUR_EMAIL>',
    '[ALERT] Digital Islamic Banking: Significant deposit outflow detected',
    'Significant deposit outflow detected'
  );

ALTER ALERT APP.DEPOSIT_OUTFLOW_ALERT RESUME;

-- Alert: CHURN_SPIKE_ALERT
CREATE OR REPLACE ALERT APP.CHURN_SPIKE_ALERT
  WAREHOUSE = DIGIBANK_WH
  SCHEDULE = '5 MINUTE'
  COMMENT = 'High-value customer at critical churn risk'
IF (EXISTS (
  SELECT 1 FROM CURATED.CUSTOMER_360
  WHERE 1=1 -- Condition: High-value customer churn risk score exceeds 80
))
THEN
  CALL SYSTEM$SEND_EMAIL(
    'aws_indonesia_islamic_finance_digital_EMAIL_INT',
    '<YOUR_EMAIL>',
    '[ALERT] Digital Islamic Banking: High-value customer at critical churn risk',
    'High-value customer at critical churn risk'
  );

ALTER ALERT APP.CHURN_SPIKE_ALERT RESUME;

