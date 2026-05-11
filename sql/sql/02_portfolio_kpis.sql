-- Query 2: Portfolio Summary KPIs
-- What is the overall state of the loan portfolio?

USE northbridge_finance;

SELECT
    COUNT(*)                                        AS total_loans,
    SUM(loan_amount_gbp)                            AS total_portfolio_gbp,
    ROUND(AVG(interest_rate_pct), 2)                AS avg_interest_rate,
    ROUND(AVG(credit_score), 0)                     AS avg_credit_score,
    SUM(default_flag)                               AS total_defaults,
    ROUND(SUM(default_flag) * 100.0 / COUNT(*), 1) AS default_rate_pct,
    SUM(outstanding_balance_gbp)                    AS total_outstanding_gbp
FROM loan_portfolio;
