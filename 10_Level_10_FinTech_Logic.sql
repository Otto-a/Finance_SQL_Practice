Level 10: Presta-Specific Business Logic (91 - 100)
(Presta operates Presta Pay, Presta Sign, Presta USSD, and Presta Appraisal [1]. These questions mimic real tasks you'll do [1].)
Loan Arrears: Write a query to calculate the Arrears Amount for all active loans where the expected repayment up to today is greater than the actual total repaid.
SACCO Share Multiplier (Presta Appraisal): SACCOs often limit loans to 3x a member's shares. Write a query to flag customers whose requested loan_amount exceeds 3 times their total_value of shares [2, 7].
Presta USSD Guarantorship: Find all loans where the guarantor was onboarded via the USSD channel (where sign_method = 'USSD') and the loan is still pending approval [1, 2].
M-PESA Reconciliation (Presta Pay): Write a mock query matching Repayments to an external Mpesa_Statements table to find discrepancies (payments recorded in the LMS but missing from the M-PESA statement) [2, 6].
Non-Performing Loans (NPL): Define an NPL as any loan past due by more than 90 days. Calculate the NPL ratio (Total NPL Balance / Total Active Loan Balance).
Presta Sign / Guarantor Exposure: Write a query to calculate the "Total Risk Exposure" for a guarantor (Sum of outstanding balances of all active loans they have guaranteed) [8].
Automated Appraisal: Write a query that automatically returns 'Reject' if the credit_score < 500 OR the applicant has an existing active defaulting loan [7].
Interest Amortization: Calculate the expected monthly interest for a given loan assuming a flat interest rate vs. a reducing balance rate [5].
Customer Retention: Find customers who fully repaid their first loan and took a second loan within 30 days of the settlement date.
Executive Dashboard: Write a single, highly summarized CTE query providing: Total Active Customers, Total Loans Disbursed Today, Total M-PESA Collections Today, and the Number of Pending USSD Guarantor Requests [6, 8].