-- Query 9: Employment Status Risk
-- Do students and self-employed borrowers default more?

USE northbridge_finance;

SELECT
    employment_status,
    COUNT(*)                                        AS total_loans,
    ROUND(AVG(annual_income_gbp), 0)                AS avg_income,
    ROUND(AVG(credit_score), 0)                     AS avg_credit_score,
    SUM(default_flag)                               AS defaults,
    ROUND(SUM(default_flag) * 100.0 / COUNT(*), 1) AS default_rate_pct,
    ROUND(AVG(interest_rate_pct), 2)                AS avg_rate
FROM loan_portfolio
GROUP BY employment_status
ORDER BY default_rate_pct DESC;
