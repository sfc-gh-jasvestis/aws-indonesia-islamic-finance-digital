-- ============================================================================
-- 03_STAGING.SQL — Generate synthetic data for Digital Islamic Banking
-- Country: INDONESIA | Currency: IDR
-- ============================================================================
USE DATABASE ISLAMIC_DIGITAL_BANKING;
USE SCHEMA RAW;

-- Data generation scripts are demo-specific.
-- See the handcrafted SQL in the aws-malaysia-semiconductor-yield demo for
-- the full pattern: GENERATOR + UNIFORM + LATERAL for distribution,
-- Cortex Complete for text generation, engineered key demo numbers.

-- Target row counts:
-- CUSTOMERS: 500,000 rows — Digital Islamic bank customer profiles with KYC and segmentation
-- TRANSACTIONS: 5,000,000 rows — 12 months of transaction history across savings, financing, and payments
-- DEPOSITS: 1,000,000 rows — Daily deposit balances by product type (Wadiah, Mudharabah)
-- APP_EVENTS: 10,000,000 rows — Mobile app engagement events (logins, feature usage, session data)
-- CAMPAIGNS: 5,000 rows — Marketing campaign records with targeting and response data
-- PRODUCT_DOCS: 40 rows — Shariah product documentation, fatwa decisions, and compliance guides
