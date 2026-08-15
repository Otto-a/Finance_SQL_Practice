# 📊 FinTech SQL Practice Repository

**Database Name:** `finance_practice_db`  

## 📝 About This Project
This repository contains a collection of 100 progressive SQL queries designed to simulate real-world data analysis tasks in a FinTech environment. It focuses heavily on Loan Management Systems (LMS), M-PESA transaction tracking, Guarantor evaluations and SACCO shares data. 

## 🛠️ Tech Stack & Tools Used
* **Database Engine:** MySQL 8.0
* **IDE/Editor:** Visual Studio Code (VS Code)
* **Extensions:** SQLTools (Direct MySQL integration in VS Code)
* **Version Control:** Git & GitHub

## 🗄️ Database Schema
The `finance_practice_db` mimics a core banking/lending system with the following 5 tables:
1. **`Customers`**: Client details, joining dates, credit scores, and M-PESA numbers.
2. **`Loans`**: Loan applications, disbursement dates, interest rates, and active balances.
3. **`Repayments`**: Transaction logs containing payment channels (e.g., M-PESA, Bank) and receipt numbers.
4. **`Guarantors`**: Risk evaluation tracking who guaranteed which loan and via what channel (e.g., USSD).
5. **`Sacco_Shares`**: Records of customer savings/shares values used as loan collateral.

## 📂 Repository Structure
The SQL challenges are broken down into 10 levels, ranging from basic data retrieval to complex FinTech business logic:

* `00_Setup_Database.sql` - *Creates the schema and inserts mock data.*
* `01_Level_1_Retrieval.sql` - *Basic `SELECT`, `AS`, `DISTINCT` operations.*
* `02_Level_2_Filtering.sql` - *`WHERE`, `IN`, `LIKE`, `BETWEEN`, and sorting.*
* `03_Level_3_Aggregation.sql` - *Math and Aggregate functions (`SUM`, `AVG`, `COUNT`).*
* `04_Level_4_Grouping.sql` - *`GROUP BY` and `HAVING` clauses.*
* `05_Level_5_Joins.sql` - *`INNER`, `LEFT`, and Self Joins across tables.*
* `06_Level_6_Date_Time.sql` - *Date manipulation for turnaround times and due dates.*
* `07_Level_7_Subqueries.sql` - *Nested queries and Common Table Expressions (CTEs).*
* `08_Level_8_Window_Functions.sql` - *`RANK()`, `LEAD()`, and running totals.*
* `09_Level_9_Case_String.sql` - *Data cleaning, masking, and conditional logic.*
* `10_Level_10_FinTech_Logic.sql` - *Complex business logic (Arrears, NPL ratios, Automated Appraisals).*

## 🚀 How to Run Locally
To practice or test these queries on your own machine:
1. Clone this repository to your local machine.
2. Open your MySQL client or VS Code with the SQLTools extension.
3. Run the following command to create the database:
   ```sql
   CREATE DATABASE finance_practice_db;
   USE finance_practice_db;