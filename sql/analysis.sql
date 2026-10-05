
SELECT COUNT(*) FROM banking;

-- 1.How many customers are there?
SELECT COUNT(DISTINCT client_id) AS total_customers 
FROM banking; 

-- 2. Number of customers by loyalty classification
SELECT loyalty_classification, 
COUNT(DISTINCT client_id) AS total_customers
FROM banking
GROUP BY loyalty_classification
ORDER BY total_customers DESC;

-- 3. What is the average age of bank customers?
SELECT ROUND(AVG(age),2) AS avg_age FROM banking;

-- 4. Which are the top 10 occupations by number of customers?
SELECT occupation,
COUNT(DISTINCT client_id) AS total_customers
FROM banking
GROUP BY occupation
ORDER BY total_customers DESC
LIMIT 10;

-- 5. Average estimated income
SELECT ROUND(AVG(estimated_income), 2) AS average_income
FROM banking;

-- 6. Total Bank Deposits
SELECT ROUND(SUM(bank_deposits), 2) AS total_bank_deposits
FROM banking;

-- 7. Total Bank Loans
SELECT ROUND(SUM(bank_loans), 2) AS total_bank_loans
FROM banking;

-- 8. Average Credit Card Balance
SELECT ROUND(AVG(credit_card_balance), 2) AS avg_credit_card_balance
FROM banking;

-- 9. Average Savings Account Balance
SELECT ROUND(AVG(saving_accounts), 2) AS avg_savings_balance
FROM banking;

-- 10. How many customers have credit cards?
SELECT COUNT(DISTINCT client_id) AS customers_with_credit_cards
FROM banking
WHERE amount_of_credit_cards > 0;

-- 11. Customers with business lending
SELECT COUNT(DISTINCT client_id) AS customers_with_business_lending
FROM banking
WHERE business_lending > 0;

-- 12. Average number of properties owned
SELECT ROUND(AVG(properties_owned), 2) AS avg_properties_owned
FROM banking;

-- 13. Customers by risk weighting
SELECT 
    risk_weighting,
    COUNT(DISTINCT client_id) AS total_customers
FROM banking
GROUP BY risk_weighting
ORDER BY risk_weighting;

-- 14. Average income by risk weighting
SELECT 
    risk_weighting,
    ROUND(AVG(estimated_income), 2) AS average_income
FROM banking
GROUP BY risk_weighting
ORDER BY risk_weighting;

-- 15. Top 10 customers by total financial holdings
SELECT 
    risk_weighting,
    ROUND(AVG(estimated_income), 2) AS average_income
FROM banking
GROUP BY risk_weighting
ORDER BY risk_weighting;