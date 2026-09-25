
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