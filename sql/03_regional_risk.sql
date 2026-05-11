-- Query 3: Default Rate by Region
-- Which UK regions have the highest default risk?

USE northbridge_finance;

SELECT
    region,
    COUNT(*)                                        AS total_loans,
    SUM(default_flag)                               AS defaults,
    ROUND(SUM(default_flag) * 100.0 / COUNT(*), 1) AS default_rate_pct,
    ROUND(AVG(credit_score), 0)                     AS avg_credit_score,
    SUM(loan_amount_gbp)                            AS total_exposure_gbp
FROM loan_portfolio
GROUP BY region
ORDER BY default_rate_pct DESC;
