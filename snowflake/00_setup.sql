-- Generated from generator/demo_specs/aws-indonesia-islamic-finance-digital.json
-- Regenerate with: python3 generator/gen_repo_docs.py aws-indonesia-islamic-finance-digital
-- This is the schema that is actually deployed for ID_ISLAMIC_FINANCE_DIGITAL.

-- ID_ISLAMIC_FINANCE_DIGITAL  (Digital Islamic Banking)
-- generated from generator/demo_specs/aws-indonesia-islamic-finance-digital.json - do not hand-edit
CREATE DATABASE IF NOT EXISTS ID_ISLAMIC_FINANCE_DIGITAL;
CREATE SCHEMA IF NOT EXISTS ID_ISLAMIC_FINANCE_DIGITAL.RAW;
CREATE SCHEMA IF NOT EXISTS ID_ISLAMIC_FINANCE_DIGITAL.CURATED;
CREATE SCHEMA IF NOT EXISTS ID_ISLAMIC_FINANCE_DIGITAL.APP;
USE DATABASE ID_ISLAMIC_FINANCE_DIGITAL;

-- 5 real regions; entity names carry their region so the two always agree
