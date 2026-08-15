
--Level 1: Basic Data Retrieval (1 - 10)

-- 1.Select all columns from the Customers table.
SELECT *

FROM
customers;

-- 2.Retrieve only the first_name, last_name, and mpesa_number of all users.

SELECT
first_name,
last_name,
mpesa_number

FROM customers;

-- 3.Fetch the loan_id and loan_amount for all records in the Loans table.

SELECT

loan_id,
loan_amount
FROM loans;

-- 4.Get a unique list of all payment channel types used in the Repayments table (e.g., M-PESA, Bank).

SELECT DISTINCT(channel)
FROM repayments;

-- 5.Select all Sacco_Shares records and alias the shares_count column to total_shares.

SELECT share_id,
    customer_id,
    shares_count AS total_shares,
    total_value,
    last_updated
FROM sacco_shares;

--6.Retrieve all customer records where the status is 'Active'.
SELECT *
FROM customers
WHERE status='Active';

-- 7.Fetch all loans from the Loans table where the status is 'Disbursed'
SELECT *

FROM loans
where status='Disbursed';

-- 8.Get the repayment_id and amount for all repayments greater than 5,000 KES.

SELECT repayment_id,
    amount
FROM repayments
WHERE amount > 5000;

-- 9.Select all guarantors who have guaranteed an amount exactly equal to 10,000 KES.

SELECT *
FROM guarantors
WHERE amount_guaranteed = 10000;

-- 10.Find all customers whose credit_score is exactly 750.

SELECT *

FROM customers
WHERE credit_score = 750;