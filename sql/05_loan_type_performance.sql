-- Query 5: Loan Type Performance
-- Which loan types carry the most risk?

USE northbridge_finance;

SELECT
    loan_type,
    COUNT(*)                          AS total_loans,
    SUM(default_flag)                 AS defaults,
    ROUND(AVG(interest_rate_pct), 2)  AS avg_rate,
    ROUND(AVG(credit_score), 0)       AS avg_credit_score,
    SUM(outstanding_balance_gbp)      AS total_outstanding
FROM loan_portfolio
GROUP BY loan_type
ORDER BY defaults DESC;
