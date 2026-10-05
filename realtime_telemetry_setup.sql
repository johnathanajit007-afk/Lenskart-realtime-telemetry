-- Create a dedicated database and schema for our real-time project
CREATE DATABASE IF NOT EXISTS REALTIME_ECOMMERCE_DB;
USE DATABASE REALTIME_ECOMMERCE_DB;

CREATE SCHEMA IF NOT EXISTS TELEMETRY;
USE SCHEMA TELEMETRY;

-- Create a raw table to hold incoming streaming telemetry events as JSON (VARIANT)
CREATE OR REPLACE TABLE RAW_TELEMETRY_STREAM (
    event_payload VARIANT,
    ingested_at TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);

-- Quick check to verify everything is set up correctly
SHOW TABLES;
SELECT * FROM REALTIME_ECOMMERCE_DB.TELEMETRY.RAW_LENSKART_TELEMETRY;