-- ============================================================================
-- Digital Islamic Banking
-- Customer analytics for Indonesia's digital Islamic banking revolution — ML.FORECAST predicts deposit growth, Dynamic Tables build real-time customer 360 views, and Cortex AI generates personalized product recommendations.
-- ============================================================================
USE ROLE ACCOUNTADMIN;
CREATE DATABASE IF NOT EXISTS ISLAMIC_DIGITAL_BANKING;
CREATE WAREHOUSE IF NOT EXISTS DIGIBANK_WH WAREHOUSE_SIZE = 'MEDIUM' AUTO_SUSPEND = 120 AUTO_RESUME = TRUE;
USE DATABASE ISLAMIC_DIGITAL_BANKING;
CREATE SCHEMA IF NOT EXISTS RAW;
CREATE SCHEMA IF NOT EXISTS CURATED;
CREATE SCHEMA IF NOT EXISTS ML;
CREATE SCHEMA IF NOT EXISTS AI;
CREATE SCHEMA IF NOT EXISTS SEARCH;
CREATE SCHEMA IF NOT EXISTS APP;

USE WAREHOUSE DIGIBANK_WH;
