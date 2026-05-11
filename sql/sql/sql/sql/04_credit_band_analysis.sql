-- Query 4: Risk by Credit Score Band
-- How does credit score relate to default risk?

USE northbridge_finance;

SELECT
    CASE
        WHEN credit_score >= 750 THEN 'Excellent (750+)'
        WHEN credit_score >= 700 THEN 'Good (700-749)'
        WHEN credit_score >= 650 THEN 'Fair (650-699)'
        WHEN credit_score >= 600 THEN 'Poor (600-649)'
        ELSE                          'Very Poor (below 600)'
    END                                             AS credit_band,
    COUNT(*)                                        AS loan_count,
    SUM(default_flag)                               AS defaults,
    ROUND(SUM(default_flag) * 100.0 / COUNT(*), 1) AS default_rate_pct,
    ROUND(AVG(interest_rate_pct), 2)                AS avg_rate
FROM loan_portfolio
GROUP BY credit_band
ORDER BY MIN(credit_score) DESC;
