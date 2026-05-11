-- Query 8: Monthly Lending Trends
-- How has loan volume changed over time?

USE northbridge_finance;

SELECT
    DATE_FORMAT(issue_date, '%Y-%m')  AS issue_month,
    COUNT(*)                          AS loans_issued,
    SUM(loan_amount_gbp)              AS volume_gbp,
    ROUND(AVG(credit_score), 0)       AS avg_credit_score,
    ROUND(AVG(interest_rate_pct), 2)  AS avg_rate
FROM loan_portfolio
GROUP BY issue_month
ORDER BY issue_month;
