USE BankManagement;

-- =====================================
-- BRANCH
-- =====================================
INSERT INTO Branch (BranchName, Address, Phone)
VALUES
('Ho Chi Minh Branch', '123 Nguyen Hue, District 1', '02838223344'),
('Ha Noi Branch', '45 Ba Trieu, Hoan Kiem', '02438223344'),
('Da Nang Branch', '100 Bach Dang, Hai Chau', '02363822334');

-- =====================================
-- CUSTOMER
-- =====================================
INSERT INTO Customer (FullName, DOB, Gender, Phone, Address)
VALUES
('Le Hoang Duy','2005-10-10','Male','0912345678','Thu Duc, Ho Chi Minh'),
('Nguyen Thi Lan','1999-03-15','Female','0903456789','Ba Dinh, Ha Noi'),
('Tran Van Minh','1997-08-22','Male','0934567890','Hai Chau, Da Nang'),
('Pham Ngoc Anh','2001-12-01','Female','0945678901','Go Vap, Ho Chi Minh'),
('Vo Thanh Tung','1995-06-20','Male','0956789012','Thanh Khe, Da Nang');

-- =====================================
-- EMPLOYEE
-- =====================================
INSERT INTO Employee
(FullName, Gender, DOB, Position, Phone, BranchID)
VALUES
('Nguyen Van A','Male','1990-04-10','Manager','0901111111',1),
('Tran Thi B','Female','1995-07-18','Teller','0902222222',1),
('Pham Van C','Male','1992-11-25','Accountant','0903333333',2),
('Le Thi D','Female','1994-02-14','Customer Service','0904444444',3);

-- =====================================
-- ACCOUNT
-- =====================================
INSERT INTO Account
(AccNumber, AccType, Balance, OpenDate, Status, CustomerID, BranchID)
VALUES
('100000001','Saving',15000000,'2026-01-10','Active',1,1),
('100000002','Checking',8200000,'2026-02-05','Active',2,2),
('100000003','Saving',25000000,'2026-03-12','Active',3,3),
('100000004','Credit',5000000,'2026-04-01','Active',4,1),
('100000005','Checking',9800000,'2026-05-20','Active',5,3);

-- =====================================
-- BANK TRANSACTION
-- =====================================
INSERT INTO BankTransaction
(TransType, Amount, TransDate, Description, AccountID, EmployeeID)
VALUES
('Deposit',5000000,'2026-07-01 08:30:00','Cash Deposit',1,2),
('Withdrawal',1000000,'2026-07-02 10:15:00','ATM Withdrawal',2,3),
('Transfer',2500000,'2026-07-03 14:20:00','Transfer to another account',1,1),
('Payment',850000,'2026-07-04 18:10:00','Electricity Bill',4,2),
('Deposit',3000000,'2026-07-05 09:00:00','Salary',5,4);

-- =====================================
-- LOAN
-- =====================================
INSERT INTO Loan
(LoanType, Amount, InterestRate, StartDate, EndDate, Status, CustomerID)
VALUES
('Home Loan',500000000,7.5,'2026-01-01','2046-01-01','Approved',1),
('Car Loan',300000000,8.2,'2026-02-15','2033-02-15','Approved',2),
('Business Loan',1000000000,9.0,'2026-03-20','2036-03-20','Pending',3);

-- =====================================
-- PAYMENT
-- =====================================
INSERT INTO Payment
(PayDate, Amount, LoanID)
VALUES
('2026-07-01',5000000,1),
('2026-07-01',3500000,2),
('2026-08-01',5000000,1);

-- =====================================
-- PAYMENT CARD
-- =====================================
INSERT INTO PaymentCard
(CardNumber, CardType, IssueDate, ExpiryDate, CardStatus, AccountID)
VALUES
('9704000000000001','Debit','2026-01-10','2031-01-10','Active',1),
('9704000000000002','Credit','2026-02-05','2031-02-05','Active',2),
('9704000000000003','ATM','2026-03-12','2031-03-12','Active',3),
('9704000000000004','Debit','2026-04-01','2031-04-01','Blocked',4),
('9704000000000005','ATM','2026-05-20','2031-05-20','Active',5);

-- =====================================
-- CARD TRANSACTION
-- =====================================
INSERT INTO CardTransaction
(CardID, MerchantName, Amount, TransactionDate, PaymentMethod, Description)
VALUES
(1,'Co.opmart',450000,'2026-07-06 10:00:00','POS','Shopping'),
(2,'Shopee',980000,'2026-07-06 20:30:00','Online','Online Shopping'),
(3,'Vietcombank ATM',2000000,'2026-07-07 09:15:00','ATM','Cash Withdrawal'),
(4,'Circle K',120000,'2026-07-07 18:45:00','POS','Convenience Store'),
(5,'Tiki',560000,'2026-07-08 15:30:00','Online','Online Purchase');