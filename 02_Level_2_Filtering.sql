--Level 2: Filtering and Sorting (11 - 20)

-- 1.Find all customers who joined the FinTech after January 1, 2024.

SELECT *
FROM customers
WHERE join_date > '2024-1-1';

-- 2.Retrieve loans where the loan_amount is between 10,000 and 50,000 KES.
SELECT *
FROM loans
WHERE loan_amount BETWEEN 10000 AND 50000;

-- 3.List all repayments made via 'M-PESA' or 'Bank Transfer' using the IN operator.

SELECT *
FROM repayments
WHERE channel IN ('M-Pesa','Bank Transfer');

-- 4.Find all customers whose last_name starts with 'M'.

SELECT *
FROM customers
WHERE last_name LIKE 'M%';


--5.Fetch all loans that are 'Pending' and have a loan_amount > 20,000.

SELECT *
FROM loans
WHERE status = 'Pending' AND loan_amount > 20000;

-- 6.Retrieve all customers who do not have an mpesa_number recorded (IS NULL).
SELECT *
FROM customers
WHERE mpesa_number IS NULL;

-- 7.List all loans sorted by apply_date in descending order.

SELECT *
FROM loans
ORDER BY apply_date DESC;

-- 8.Get the top 5 largest loans ever disbursed, sorted by loan_amount descending.

SELECT *
FROM loans
ORDER BY loan_amount DESC
LIMIT 5;

-- 9.Find all repayments made in the year 2024, ordered by amount ascending.

SELECT *
FROM repayments
WHERE YEAR(payment_date) = 2024
ORDER BY amount ASC;

-- 10.Retrieve all guarantors for loan_id 101, ordered by amount_guaranteed descending.
SELECT *
FROM guarantors
WHERE loan_id = 101
ORDER BY amount_guaranteed DESC;







