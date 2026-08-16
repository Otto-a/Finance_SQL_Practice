-- Level 5: Joins (41 - 50)
-- 1. Write an INNER JOIN to list first_name, last_name and loan_amount for all customers with loans.
SELECT c.first_name,c.last_name,l.loan_amount
FROM customers c
INNER JOIN loans l
ON c.customer_id = l.customer_id;

--2. Use a LEFT JOIN to find all customers and their loans, including those who have never taken a loan.

SELECT c.first_name,c.last_name,l.loan_amount
FROM customers c
LEFT JOIN loans l
ON c.customer_id=l.customer_id;

-- 3.Join Loans and Repayments to show loan_id, loan_amount, and repayment amount.

SELECT l.loan_id,l.loan_amount,r.amount AS repayment_amount
FROM loans l
LEFT JOIN repayments r
ON l.loan_id = r.loan_id;

-- 4.Join Customers to Guarantors to find the names of customers who acted as a guarantor.

SELECT c.first_name,c.last_name,g.amount_guaranteed
FROM customers c
JOIN guarantors g
ON c.customer_id = g.guarantor_customer_id;

-- 5.Join Customers, Loans and Repayments to get the customer name, loan amount and total repaid so far.

SELECT CONCAT(c.first_name,' ', c.last_name), l.loan_amount, SUM(r.amount) AS total_repaid
FROM customers c
JOIN loans l
ON c.customer_id = l.customer_id
JOIN repayments r
ON l.loan_id = r.loan_id
GROUP BY SRc.customer_id,c.first_name,c.last_name,l.loan_id,l.loan_amount;


-- 6.Find loans that have guarantors, displaying the borrower's name and the guarantor's name (Requires self-joining the Customers table via Loans and Guarantors).

SELECT c.first_name,guarantor_cust.first_name AS guarantor_name,l.loan_amount
FROM loans l
JOIN  guarantors g
ON l.loan_id = g.loan_id
JOIN customers c
ON l.customer_id= c.customer_id
JOIN customers guarantor_cust
ON g.guarantor_customer_id=guarantor_cust.customer_id;

-- 7. Use a RIGHT JOIN to find all repayments and the corresponding loan details, flagging any orphaned repayments.

SELECT r.repayment_id,r.amount AS amount_repaid,l.loan_id,l.loan_amount
FROM loans l
RIGHT JOIN repayments r
ON l.loan_id=r.loan_id
GROUP BY l.loan_id,r.repayment_id;

--8. List all customers who have shares in the SACCO, showing their names and the total_value of their shares.

SELECT CONCAT(c.first_name,' ', c.last_name) AS name,s.total_value
FROM customers c
JOIN sacco_shares s
ON c.customer_id = s.customer_id;

-- 9.Find customers who have taken a loan but do NOT have any SACCO shares (LEFT JOIN with IS NULL).

SELECT DISTINCT (CONCAT(c.first_name,' ', c.last_name)) AS name
FROM customers c
JOIN loans l
ON c.customer_id=l.loan_id
LEFT JOIN sacco_shares s
ON c.customer_id=s.customer_id
WHERE s.share_id IS NULL;

-- 10.Join Loans and Guarantors to find loans where the total amount_guaranteed is less than the loan_amount.

SELECT l.loan_id,l.loan_amount, COALESCE(SUM(g.amount_guaranteed),0) AS total_guaranteed
FROM loans l
LEFT JOIN guarantors g
ON l.loan_id =g.loan_id
GROUP BY l.loan_id,l.loan_amount
HAVING COALESCE(SUM(g.amount_guaranteed),0) < l.loan_amount;