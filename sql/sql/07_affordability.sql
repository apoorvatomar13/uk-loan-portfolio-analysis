-- Query 7: Affordability Check
-- Which borrowers have the highest loan to income ratio?

USE northbridge_finance;

SELECT
    loan_id,
    region,
    employment_status,
    annual_income_gbp,
    loan_amount_gbp,
    ROUND(loan_amount_gbp * 100.0
        / annual_income_gbp, 1)       AS loan_to_income_pct,
    loan_status,
    credit_score
FROM loan_portfolio
ORDER BY loan_to_income_pct DESC
LIMIT 15;
