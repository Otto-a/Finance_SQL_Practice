Level 9: Case Statements & String Manipulation (81 - 90)
Write a CASE statement to categorize credit_score: > 800 as 'Excellent', 600-800 as 'Good', < 600 as 'Risky'.
Format first_name and last_name into a single full_name column (Concatenation).
Use a CASE statement to create a loan_status_label (e.g., if balance = 0 then 'Settled').
Write a query to mask the first 6 digits of the mpesa_number (e.g., ******7890) for privacy.
Standardize the channel text to UPPERCASE for all repayment records.
Extract the prefix of the mpesa_receipt_no (first 2 characters) to analyze M-PESA receipt batches.
Create a flag (1 or 0) using CASE for loans guaranteed by more than one person.
Calculate a late fee: if current date > due_date, add 5% to the balance, else 0.
Replace any NULL values in mpesa_receipt_no with the string 'N/A' using COALESCE or IFNULL.
Extract the length of the mpesa_number to identify invalid entries (e.g., lengths that aren't 10 or 12 characters).