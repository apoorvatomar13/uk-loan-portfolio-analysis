-- NorthBridge Finance — Database Schema
-- Author: Apoorva Tomar
-- Date: May 2026

CREATE DATABASE IF NOT EXISTS northbridge_finance;
USE northbridge_finance;

CREATE TABLE loan_portfolio (
    loan_id                 VARCHAR(10)   PRIMARY KEY,
    customer_id             VARCHAR(10),
    age                     INT,
    region                  VARCHAR(50),
    employment_status       VARCHAR(30),
    annual_income_gbp       INT,
    loan_amount_gbp         INT,
    loan_term_months        INT,
    interest_rate_pct       DECIMAL(4,1),
    loan_type               VARCHAR(20),
    loan_status             VARCHAR(20),
    issue_date              DATE,
    credit_score            INT,
    monthly_payment_gbp     INT,
    total_paid_gbp          INT,
    outstanding_balance_gbp INT,
    days_past_due           INT DEFAULT 0,
    default_flag            TINYINT DEFAULT 0
);
