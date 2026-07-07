USE BankManagement;

-- ============================================
-- 1. Display all customers
-- ============================================
SELECT * FROM Customer;

-- ============================================
-- 2. Display all accounts with customer names
-- ============================================
SELECT
    c.FullName,
    a.AccNumber,
    a.AccType,
    a.Balance,
    a.Status
FROM Customer c
JOIN Account a
ON c.CustomerID = a.CustomerID;

-- ============================================
-- 3. Display all employees and their branches
-- ============================================
SELECT
    e.FullName,
    e.Position,
    b.BranchName
FROM Employee e
JOIN Branch b
ON e.BranchID = b.BranchID;

-- ============================================
-- 4. Display transaction history
-- ============================================
SELECT
    bt.TransactionID,
    a.AccNumber,
    bt.TransType,
    bt.Amount,
    bt.TransDate
FROM BankTransaction bt
JOIN Account a
ON bt.AccountID = a.AccountID
ORDER BY bt.TransDate DESC;

-- ============================================
-- 5. Customers with loans
-- ============================================
SELECT
    c.FullName,
    l.LoanType,
    l.Amount,
    l.Status
FROM Loan l
JOIN Customer c
ON l.CustomerID = c.CustomerID;

-- ============================================
-- 6. Loan payment history
-- ============================================
SELECT
    l.LoanID,
    c.FullName,
    p.PayDate,
    p.Amount
FROM Payment p
JOIN Loan l
ON p.LoanID = l.LoanID
JOIN Customer c
ON l.CustomerID = c.CustomerID;

-- ============================================
-- 7. Display payment cards
-- ============================================
SELECT
    c.FullName,
    pc.CardNumber,
    pc.CardType,
    pc.CardStatus
FROM PaymentCard pc
JOIN Account a
ON pc.AccountID = a.AccountID
JOIN Customer c
ON a.CustomerID = c.CustomerID;

-- ============================================
-- 8. Card transaction history
-- ============================================
SELECT
    pc.CardNumber,
    ct.MerchantName,
    ct.Amount,
    ct.TransactionDate
FROM CardTransaction ct
JOIN PaymentCard pc
ON ct.CardID = pc.CardID;

-- ============================================
-- 9. Total balance of each customer
-- ============================================
SELECT
    c.FullName,
    SUM(a.Balance) AS TotalBalance
FROM Customer c
JOIN Account a
ON c.CustomerID = a.CustomerID
GROUP BY c.CustomerID, c.FullName;

-- ============================================
-- 10. Customer with the highest balance
-- ============================================
SELECT
    c.FullName,
    a.AccNumber,
    a.Balance
FROM Customer c
JOIN Account a
ON c.CustomerID = a.CustomerID
ORDER BY a.Balance DESC
LIMIT 1;

-- ============================================
-- 11. Number of accounts by account type
-- ============================================
SELECT
    AccType,
    COUNT(*) AS TotalAccounts
FROM Account
GROUP BY AccType;

-- ============================================
-- 12. Total balance by branch
-- ============================================
SELECT
    b.BranchName,
    SUM(a.Balance) AS TotalBalance
FROM Branch b
JOIN Account a
ON b.BranchID = a.BranchID
GROUP BY b.BranchID, b.BranchName;

-- ============================================
-- 13. Number of customers in each branch
-- ============================================
SELECT
    b.BranchName,
    COUNT(a.CustomerID) AS TotalCustomers
FROM Branch b
LEFT JOIN Account a
ON b.BranchID = a.BranchID
GROUP BY b.BranchID, b.BranchName;

-- ============================================
-- 14. Employees who processed transactions
-- ============================================
SELECT
    e.FullName,
    COUNT(bt.TransactionID) AS TotalTransactions
FROM Employee e
LEFT JOIN BankTransaction bt
ON e.EmployeeID = bt.EmployeeID
GROUP BY e.EmployeeID, e.FullName;

-- ============================================
-- 15. Customers without loans
-- ============================================
SELECT
    c.FullName
FROM Customer c
LEFT JOIN Loan l
ON c.CustomerID = l.CustomerID
WHERE l.LoanID IS NULL;

-- ============================================
-- 16. Active payment cards
-- ============================================
SELECT *
FROM PaymentCard
WHERE CardStatus='Active';

-- ============================================
-- 17. Transactions greater than 1,000,000
-- ============================================
SELECT *
FROM BankTransaction
WHERE Amount > 1000000;

-- ============================================
-- 18. Accounts with balance greater than 10,000,000
-- ============================================
SELECT *
FROM Account
WHERE Balance > 10000000;

-- ============================================
-- 19. Total transaction amount by type
-- ============================================
SELECT
    TransType,
    SUM(Amount) AS TotalAmount
FROM BankTransaction
GROUP BY TransType;

-- ============================================
-- 20. Branch with the highest total balance
-- ============================================
SELECT
    b.BranchName,
    SUM(a.Balance) AS TotalBalance
FROM Branch b
JOIN Account a
ON b.BranchID = a.BranchID
GROUP BY b.BranchID, b.BranchName
ORDER BY TotalBalance DESC
LIMIT 1;