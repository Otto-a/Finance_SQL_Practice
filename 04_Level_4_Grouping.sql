-- Level 4: Grouping & Having (31 - 40)

-- 1.Group loans by status and count how many loans are in each status.
SELECT status,COUNT(*) AS loan_count
FROM loans
GROUP BY status;

-- 2.Calculate the total repayment amount collected per channel.

SELECT channel,
    SUM(amount) AS total_repayment_amount
FROM repayments
GROUP BY channel;

-- 3.Find the average loan_amount grouped by interest_rate.

SELECT interest_rate,
    AVG(loan_amount) AS avg_loan_amount
FROM loans
GROUP BY interest_rate;

-- 4.Get the total shares_count grouped by customer_id.

SELECT customer_id,
    SUM(shares_count) AS total_shares
FROM sacco_shares
GROUP BY customer_id;

-- 5.Find the total amount_guaranteed per guarantor_customer_id.

SELECT guarantor_customer_id,
    SUM(amount_guaranteed) AS total_guaranteed
FROM guarantors
GROUP BY guarantor_customer_id;

-- 6.Identify payment channels that have processed more than 1,000,000 KES in total (HAVING).

SELECT channel,
    SUM(amount) AS amount_processed
FROM repayments
GROUP BY channel
HAVING SUM(amount) > 1000000;

--7. Find customers who have applied for more than 3 loans (HAVING).

SELECT customer_id,
    COUNT(*) as no_loans_applied
FROM loans
GROUP BY customer_id
HAVING COUNT(*) > 3 ;

-- 8.Group customers by their join year and count the number of new customers per year.

SELECT YEAR(join_date),COUNT(*) AS new_customers_per_year
FROM customers
GROUP BY YEAR(join_date);

-- 9.Find loan_ids where the sum of repayments is less than the original loan_amount.

SELECT l.loan_id,loan_amount,SUM(amount) AS repayment
FROM repayments r
LEFT JOIN loans l ON l.loan_id=r.loan_id 
GROUP BY l.loan_id,loan_amount
HAVING SUM(amount) < loan_amount;

-- 10.Group loans by the month of disbursed_date and calculate total disbursements per month.

SELECT MONTH(disbursed_date) AS month_disbursed , COUNT(*) AS total_disbursements
FROM loans
WHERE disbursed_date IS NOT NULL
GROUP BY MONTH(disbursed_date);