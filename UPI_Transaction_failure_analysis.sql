---------------------------Queries---------------------------------------------

1. What % of UPI transactions are failing?

SELECT 
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN status = 'Failed' THEN 1 ELSE 0 END) AS failed_transactions,
    ROUND(
        SUM(CASE WHEN status = 'Failed' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS failure_rate
FROM UPI_Transactions_Cleaned;

2. Which bank has the highest failure rate?

SELECT 
    bank,
    COUNT(*) AS total_transactions,
	SUM(CASE WHEN status = 'Failed' THEN 1 ELSE 0 END) AS failed_transactions,
    ROUND(
        SUM(CASE WHEN status = 'Failed' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS failure_rate
FROM UPI_Transactions_Cleaned
GROUP BY bank
ORDER BY failure_rate DESC
LIMIT 1;

3. At what time do most UPI transactions happen?

SELECT 
    hour,
	COUNT(*) total_transactions
FROM UPI_Transactions_Cleaned
GROUP BY hour
ORDER BY total_transactions DESC
LIMIT 1;

4. At what time do UPI failures happen the most?

SELECT 
    hour,
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN status = 'Failed' THEN 1 ELSE 0 END) AS failed_transactions,
    ROUND(
        SUM(CASE WHEN status = 'Failed' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS failure_rate
FROM UPI_Transactions_Cleaned
GROUP BY hour
ORDER BY failure_rate DESC
LIMIT 1;

5. What are the most common reasons for UPI transaction failures?

SELECT
    failure_reason,
	COUNT(*) AS failure_count
FROM UPI_Transactions_Cleaned
WHERE Status= 'Failed'
GROUP BY failure_reason
ORDER BY failure_count DESC;

6. Which device has the highest failure rate?

SELECT 
    device,
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN status = 'Failed' THEN 1 ELSE 0 END) AS failed_transactions,
    ROUND(
        SUM(CASE WHEN status = 'Failed' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS failure_rate
FROM UPI_Transactions_Cleaned
GROUP BY device
ORDER BY failure_rate DESC
LIMIT 1;	
