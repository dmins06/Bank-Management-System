DROP DATABASE IF EXISTS BankManagement;
CREATE DATABASE BankManagement;
USE BankManagement;

-- =====================================
-- BRANCH
-- =====================================
CREATE TABLE Branch (
    BranchID INT AUTO_INCREMENT PRIMARY KEY,
    BranchName VARCHAR(100) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    Phone VARCHAR(15)
);

-- =====================================
-- CUSTOMER
-- =====================================
CREATE TABLE Customer (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    DOB DATE,
    Gender ENUM('Male','Female','Other'),
    Phone VARCHAR(15),
    Address VARCHAR(255)
);

-- =====================================
-- EMPLOYEE
-- =====================================
CREATE TABLE Employee (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Gender ENUM('Male','Female','Other'),
    DOB DATE,
    Position VARCHAR(50),
    Phone VARCHAR(15),

    BranchID INT NOT NULL,

    FOREIGN KEY (BranchID)
        REFERENCES Branch(BranchID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- =====================================
-- ACCOUNT
-- =====================================
CREATE TABLE Account (
    AccountID INT AUTO_INCREMENT PRIMARY KEY,

    AccNumber VARCHAR(20) UNIQUE NOT NULL,

    AccType ENUM(
        'Saving',
        'Checking',
        'Credit'
    ) NOT NULL,

    Balance DECIMAL(18,2) DEFAULT 0,

    OpenDate DATE NOT NULL,

    Status ENUM(
        'Active',
        'Inactive',
        'Closed'
    ) DEFAULT 'Active',

    CustomerID INT NOT NULL,

    BranchID INT NOT NULL,

    FOREIGN KEY (CustomerID)
        REFERENCES Customer(CustomerID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (BranchID)
        REFERENCES Branch(BranchID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- =====================================
-- BANK TRANSACTION
-- =====================================
CREATE TABLE BankTransaction (

    TransactionID INT AUTO_INCREMENT PRIMARY KEY,

    TransType ENUM(
        'Deposit',
        'Withdrawal',
        'Transfer',
        'Payment'
    ) NOT NULL,

    Amount DECIMAL(18,2) NOT NULL,

    TransDate DATETIME NOT NULL,

    Description VARCHAR(255),

    AccountID INT NOT NULL,

    EmployeeID INT NOT NULL,

    FOREIGN KEY (AccountID)
        REFERENCES Account(AccountID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY (EmployeeID)
        REFERENCES Employee(EmployeeID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- =====================================
-- LOAN
-- =====================================
CREATE TABLE Loan (

    LoanID INT AUTO_INCREMENT PRIMARY KEY,

    LoanType VARCHAR(50),

    Amount DECIMAL(18,2) NOT NULL,

    InterestRate DECIMAL(5,2),

    StartDate DATE,

    EndDate DATE,

    Status ENUM(
        'Pending',
        'Approved',
        'Rejected',
        'Completed'
    ) DEFAULT 'Pending',

    CustomerID INT NOT NULL,

    FOREIGN KEY (CustomerID)
        REFERENCES Customer(CustomerID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- =====================================
-- LOAN PAYMENT
-- =====================================
CREATE TABLE Payment (

    PaymentID INT AUTO_INCREMENT PRIMARY KEY,

    PayDate DATE NOT NULL,

    Amount DECIMAL(18,2) NOT NULL,

    LoanID INT NOT NULL,

    FOREIGN KEY (LoanID)
        REFERENCES Loan(LoanID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- =====================================
-- PAYMENT CARD
-- =====================================
CREATE TABLE PaymentCard (

    CardID INT AUTO_INCREMENT PRIMARY KEY,

    CardNumber VARCHAR(20) UNIQUE NOT NULL,

    CardType ENUM(
        'Debit',
        'Credit',
        'ATM'
    ) NOT NULL,

    IssueDate DATE,

    ExpiryDate DATE,

    CardStatus ENUM(
        'Active',
        'Blocked',
        'Expired'
    ) DEFAULT 'Active',

    AccountID INT NOT NULL,

    FOREIGN KEY (AccountID)
        REFERENCES Account(AccountID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- =====================================
-- CARD TRANSACTION
-- =====================================
CREATE TABLE CardTransaction (

    CardTransactionID INT AUTO_INCREMENT PRIMARY KEY,

    CardID INT NOT NULL,

    MerchantName VARCHAR(100),

    Amount DECIMAL(18,2) NOT NULL,

    TransactionDate DATETIME NOT NULL,

    PaymentMethod ENUM(
        'POS',
        'Online',
        'ATM'
    ),

    Description VARCHAR(255),

    FOREIGN KEY (CardID)
        REFERENCES PaymentCard(CardID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);
