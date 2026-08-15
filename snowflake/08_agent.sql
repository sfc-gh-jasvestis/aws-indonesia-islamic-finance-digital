-- ============================================================================
-- 08_AGENT.SQL — Cortex Agent for Digital Islamic Banking
-- ============================================================================
USE DATABASE ISLAMIC_DIGITAL_BANKING;
USE SCHEMA APP;

CREATE OR REPLACE CORTEX AGENT APP.DIGITAL_BANKING_AGENT
  COMMENT = 'Digital Islamic Banking AI Assistant'
  MODEL = 'claude-opus-4-8'
  TOOLS = (
    SEMANTIC_VIEW_TOOL(SEMANTIC_VIEW => 'ISLAMIC_DIGITAL_BANKING.APP.DIGITAL_BANKING_ANALYTICS'),    CORTEX_SEARCH_TOOL(CORTEX_SEARCH_SERVICE => 'ISLAMIC_DIGITAL_BANKING.SEARCH.PRODUCT_DOCS_SEARCH', TOOL_DESCRIPTION => 'Search documents for Islamic Finance information')
  )
  SYSTEM_PROMPT = 'You are the Digital Islamic Banking Agent for an Indonesian Shariah-compliant neobank with 500,000 customers and Rp 12 trillion in deposits.';
