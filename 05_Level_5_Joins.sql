Level 5: Joins (41 - 50)
Write an INNER JOIN to list first_name, last_name, and loan_amount for all customers with loans.
Use a LEFT JOIN to find all customers and their loans, including those who have never taken a loan.
Join Loans and Repayments to show loan_id, loan_amount, and repayment amount.
Join Customers to Guarantors to find the names of customers who acted as a guarantor.
Join Customers, Loans, and Repayments to get the customer name, loan amount, and total repaid so far.
Find loans that have guarantors, displaying the borrower's name and the guarantor's name (Requires self-joining the Customers table via Loans and Guarantors).
Use a RIGHT JOIN to find all repayments and the corresponding loan details, flagging any orphaned repayments.
List all customers who have shares in the SACCO, showing their names and the total_value of their shares.
Find customers who have taken a loan but do NOT have any SACCO shares (LEFT JOIN with IS NULL).
Join Loans and Guarantors to find loans where the total amount_guaranteed is less than the loan_amount.