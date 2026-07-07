# Bank Management System

## Overview

The **Bank Management System** is a relational database project developed to simulate the core operations of a commercial banking system. The project focuses on designing and implementing a well-structured database that efficiently manages banking information while ensuring data integrity, consistency, and scalability.

The system supports essential banking operations, including customer registration, employee management, branch administration, account management, financial transactions, loan processing, payment tracking, and card transaction management. It follows standard database design methodologies such as Entity-Relationship (ER) modeling, relational schema design, database normalization, and SQL implementation.

This project was developed as part of the **Database Systems** course to demonstrate the practical application of database design principles in a real-world banking scenario.

---

## Features

The system provides the following functionalities:

- Customer management
  - Store and maintain customer information.
  - Manage personal details and banking relationships.

- Employee management
  - Manage employee records.
  - Assign employees to bank branches.

- Branch management
  - Store branch information.
  - Support multiple bank branches within the system.

- Account management
  - Create and maintain customer accounts.
  - Support different account types.
  - Track account balances and status.

- Banking transactions
  - Deposit money.
  - Withdraw money.
  - Transfer funds.
  - Record complete transaction history.

- Loan management
  - Register customer loans.
  - Track loan status.
  - Record loan repayment history.

- Payment card management
  - Manage debit, credit, and ATM cards.
  - Track card status and expiration dates.
  - Record card transaction history.

- Database operations
  - Execute SQL queries.
  - Generate reports.
  - Support Views, Stored Procedures, Functions, and Triggers.

---

## Database Structure

The database consists of the following main entities:

- Branch
- Customer
- Employee
- Account
- BankTransaction
- Loan
- Payment
- PaymentCard
- CardTransaction

The relationships between these entities are implemented using **Primary Keys** and **Foreign Keys**, ensuring referential integrity and reducing data redundancy.

---

## Technologies Used

- MySQL 8.x
- SQL
- MySQL Workbench
- Entity-Relationship Diagram (ERD)
- Relational Database Design
- Database Normalization (up to Third Normal Form - 3NF)

---

## Project Structure

```
Bank-Management-System/
│
├── README.md
├── bank_management_schema.sql
├── bank_management_seed.sql
├── bank_management_queries.sql
├── ERD.png
└── Report.pdf
```

### File Description

| File | Description |
|------|-------------|
| `bank_management_schema.sql` | Creates the database, tables, constraints, primary keys, and foreign keys. |
| `bank_management_seed.sql` | Inserts sample data for testing the database. |
| `bank_management_queries.sql` | Contains SQL queries for data retrieval, reporting, and testing. |

---

## Database Design

The database was developed following a standard database design process:

1. Requirement Analysis
2. Entity-Relationship Diagram (ERD)
3. Relational Database Design
4. Database Normalization (3NF)
5. Database Implementation
6. Sample Data Generation
7. SQL Query Development

The final database satisfies the Third Normal Form (3NF), minimizing redundancy while maintaining data consistency and integrity.

---

## Project Goals

The primary objective of this project is to design and implement a secure, efficient, and scalable relational database capable of supporting common banking operations.

Specifically, the project aims to:

- Apply database design principles to a real-world banking system.
- Design an efficient relational database using ER modeling.
- Normalize the database to Third Normal Form (3NF).
- Implement the database using MySQL.
- Demonstrate SQL programming skills through queries, joins, aggregations, and reporting.
- Ensure data integrity through primary keys, foreign keys, and relational constraints.
- Build a solid database foundation for future banking application development.

---

## Learning Outcomes

Through this project, the following database concepts were applied:

- Database requirement analysis
- Entity-Relationship (ER) modeling
- Relational schema design
- Database normalization
- SQL Data Definition Language (DDL)
- SQL Data Manipulation Language (DML)
- SQL queries and reporting
- Aggregate functions
- JOIN operations
- Database integrity constraints

---

## Future Improvements

Future versions of the project may include:

- User authentication and authorization
- Online banking services
- Interest calculation automation
- Automatic balance updates using Triggers
- Stored Procedures for banking operations
- Database Views for reporting
- Performance optimization with indexes
- Backup and recovery mechanisms
- Web-based banking management interface

---

## Conclusion

This project demonstrates the complete design and implementation of a relational database for a banking management system. By applying modern database design methodologies and SQL implementation techniques, the system provides a reliable and scalable foundation for managing banking operations. The project also serves as a practical demonstration of database concepts learned throughout the Database Systems course and can be further extended into a full-featured banking information system.
