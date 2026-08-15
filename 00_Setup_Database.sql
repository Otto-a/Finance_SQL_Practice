CREATE DATABASE finance_practice_db;
USE finance_practice_db;

-- 1. CREATE TABLES
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    mpesa_number VARCHAR(15),
    join_date DATE,
    credit_score INT,
    status VARCHAR(20)
);

CREATE TABLE Loans (
    loan_id INT PRIMARY KEY,
    customer_id INT,
    loan_amount DECIMAL(10, 2),
    balance DECIMAL(10, 2),
    interest_rate DECIMAL(5, 2),
    status VARCHAR(20),
    apply_date DATE,
    disbursed_date DATE,
    due_date DATE
);

CREATE TABLE Repayments (
    repayment_id INT PRIMARY KEY,
    loan_id INT,
    amount DECIMAL(10, 2),
    payment_date TIMESTAMP,
    channel VARCHAR(20),
    mpesa_receipt_no VARCHAR(20)
);

CREATE TABLE Guarantors (
    guarantor_id INT PRIMARY KEY,
    loan_id INT,
    guarantor_customer_id INT,
    amount_guaranteed DECIMAL(10, 2),
    sign_method VARCHAR(20),
    status VARCHAR(20)
);

CREATE TABLE Sacco_Shares (
    share_id INT PRIMARY KEY,
    customer_id INT,
    shares_count INT,
    total_value DECIMAL(10, 2),
    last_updated DATE
);

-- 2. INSERT MOCK DATA
-- Customers Data (Includes a name starting with M, join date in 2024, a 750 score, and a NULL mpesa number)
INSERT INTO Customers VALUES 
(1, 'John', 'Kamau', '254712345678', '2023-11-15', 720, 'Active'),
(2, 'Mary', 'Mwangi', '254722345678', '2024-02-10', 750, 'Active'),
(3, 'Peter', 'Ochieng', '254733345678', '2022-05-20', 450, 'Suspended'),
(4, 'Sarah', 'Mutisya', NULL, '2024-01-05', 680, 'Active'),
(5, 'David', 'Kiprono', '254755545678', '2023-08-30', 810, 'Active');

-- Loans Data
INSERT INTO Loans VALUES 
(101, 1, 50000.00, 20000.00, 12.00, 'Disbursed', '2024-01-10', '2024-01-12', '2024-07-12'),
(102, 2, 15000.00, 0.00, 10.00, 'Settled', '2024-03-01', '2024-03-02', '2024-04-02'),
(103, 3, 30000.00, 30000.00, 15.00, 'Pending', '2024-04-15', NULL, '2024-10-15'),
(104, 5, 100000.00, 95000.00, 12.00, 'Disbursed', '2024-04-01', '2024-04-05', '2025-04-05'),
(105, 1, 10000.00, 10000.00, 10.00, 'Disbursed', '2024-04-20', '2024-04-21', '2024-05-21');

-- Repayments Data (Includes amounts > 5000, M-PESA & Bank channels, and a NULL receipt)
INSERT INTO Repayments VALUES 
(1001, 101, 15000.00, '2024-02-12 10:30:00', 'M-PESA', 'SA12XYZ345'),
(1002, 101, 15000.00, '2024-03-12 09:15:00', 'M-PESA', 'SB34ABC678'),
(1003, 102, 15000.00, '2024-03-25 14:20:00', 'Bank Transfer', 'BNK998877'),
(1004, 104, 5000.00, '2024-04-10 16:45:00', 'M-PESA', NULL);

-- Guarantors Data (Includes USSD sign method and exact 10,000 guaranteed amounts)
INSERT INTO Guarantors VALUES 
(501, 101, 2, 25000.00, 'Presta Sign', 'Approved'),
(502, 101, 5, 25000.00, 'USSD', 'Approved'),
(503, 103, 1, 10000.00, 'USSD', 'Pending'),
(504, 105, 4, 10000.00, 'USSD', 'Approved');

-- Sacco Shares Data
INSERT INTO Sacco_Shares VALUES 
(11, 1, 100, 20000.00, '2024-01-01'),
(12, 2, 50, 10000.00, '2024-01-15'),
(13, 4, 250, 50000.00, '2024-02-01'),
(14, 5, 500, 100000.00, '2024-03-10');
