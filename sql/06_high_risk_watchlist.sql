-- Query 6: High Risk Watchlist
-- Which loans are currently late or defaulted?

USE northbridge_finance;

SELECT
    loan_id,
    region,
    loan_type,
    credit_score,
    loan_status,
    days_past_due,
    outstanding_balance_gbp
FROM loan_portfolio
WHERE loan_status IN ('Late', 'Defaulted')
ORDER BY days_past_due DESC;
