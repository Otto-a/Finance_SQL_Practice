-- Level 3: Aggregation & Math (21 - 30)

-- 1.Count the total number of customers on the platform.
SELECT COUNT(*) AS total_customers
FROM customers;

-- 2.Calculate the total loan_amount the FinTech has ever disbursed.

SELECT SUM(loan_amount) AS total_disbursed
FROM loans
WHERE disbursed_date IS NOT NULL;

-- 3.Find the average loan_amount requested by SACCO members.

SELECT AVG(loan_amount) AS average_loan_amount
FROM loans;

-- 4.Determine the maximum credit_score among all active customers.
SELECT MAX(credit_score) AS max_credit_score
FROM customers
WHERE status='Active';

-- 5.Find the minimum amount ever paid in a single transaction in the Repayments table.

SELECT MIN(amount) AS min_repayment
FROM repayments;

-- 6.Count how many unique loans have received at least one repayment.

SELECT COUNT(DISTINCT(loan_id)) AS unique_loan_count
FROM repayments;

-- 7.Calculate the total amount_guaranteed across all approved loans.

SELECT SUM(amount_guaranteed) AS total_amount_guaranteed
FROM guarantors
WHERE status='Approved';

-- 8.Find the total value of all shares in the Sacco_Shares table.

SELECT SUM(total_value) AS total_value_shares
FROM sacco_shares;

-- 9.What is the average interest rate for all loans currently 'Active'?

SELECT AVG(interest_rate) AS avg_interest_rate
FROM loans
WHERE status='Disbursed';-- 'active' loan is usually tracked with the status 'Disbursed'

-- 10.Count the number of missing (NULL) M-PESA receipt numbers in the Repayments table.

SELECT COUNT(*) AS null_mpesa_numbers
FROM repayments
WHERE mpesa_receipt_no IS NULL;
