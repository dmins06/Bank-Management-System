# Bank Management System

## Overview

The **Bank Management System** is a relational database project designed to simulate the core operations of a commercial banking system. The project focuses on designing, implementing, and managing a database that supports essential banking services while maintaining data integrity, consistency, and scalability.

The database manages key banking entities, including customers, employees, branches, bank accounts, financial transactions, loans, loan payments, payment cards, and card transactions. It follows standard database design methodologies such as requirement analysis, Entity-Relationship (ER) modeling, relational database design, database normalization, and SQL implementation.

This project was developed for the **Database Systems** course as a practical application of relational database concepts using MySQL.

---

## Features

- Customer Management
- Employee Management
- Branch Management
- Bank Account Management
- Deposit, Withdrawal, Transfer, and Payment Transactions
- Loan Management
- Loan Payment Tracking
- Payment Card Management
- Card Transaction History
- SQL Queries for Data Retrieval and Reporting

---

## Database Entities

The system consists of the following entities:

- Branch
- Customer
- Employee
- Account
- BankTransaction
- Loan
- Payment
- PaymentCard
- CardTransaction

All entities are connected using **Primary Keys** and **Foreign Keys**, ensuring referential integrity and reducing data redundancy through normalization.

---

## Technologies

- MySQL 8.x
- SQL
- MySQL Workbench
- Entity-Relationship Diagram (ERD)
- Relational Database Design
- Database Normalization (Third Normal Form - 3NF)

---

## Project Structure

```text
Bank-Management-System/
│
├── README.md
│
├── ERD/
│   ├── ERD_Bank_Manager.drawio
│   └── ERD.png
│
├── Database/
│   ├── bank_schema.sql
│   ├── bank_seed.sql
│   └── bank_queries.sql
│
└── Report/
    └── Report_BankManagementSystem.pdf
```

---

## Project Description

### ERD

Contains the Entity-Relationship Diagram used during the database design process.

- **ERD_Bank_Manager.drawio** – Editable Draw.io source file.
- **ERD.png** – Exported image of the Entity-Relationship Diagram.

### Database

Contains all SQL scripts required to create and test the database.

- **bank_schema.sql** – Creates the database, tables, constraints, primary keys, and foreign keys.
- **bank_seed.sql** – Inserts sample data into all tables.
- **bank_queries.sql** – Contains SQL queries used for testing, reporting, and data retrieval.

### Report

Contains the final project documentation.

- **Report_BankManagementSystem.pdf** – Complete project report, including requirement analysis, ERD, relational database design, normalization, database implementation, sample data, SQL queries, and conclusions.

---

## Database Design Process

The project was developed following a standard relational database design methodology:

1. Requirement Analysis
2. Entity-Relationship Diagram (ERD)
3. Relational Database Design
4. Database Normalization (3NF)
5. Database Implementation
6. Sample Data Generation
7. SQL Query Development

---

## Project Objectives

The objectives of this project are:

- Design a relational database for a commercial banking system.
- Apply ER modeling and relational database design principles.
- Normalize the database to Third Normal Form (3NF).
- Implement the database using MySQL.
- Ensure data integrity through relational constraints.
- Develop SQL queries to retrieve, analyze, and report banking information.
- Build a scalable database structure that can be extended for future banking applications.

---

## Future Improvements

Potential enhancements include:

- User authentication and role-based authorization.
- Online banking and internet banking modules.
- Automatic interest calculation.
- Stored Procedures for banking operations.
- Triggers for automatic balance updates.
- Views for reporting and business intelligence.
- Performance optimization using indexes.
- Backup and recovery mechanisms.
- Integration with a web or desktop banking application.

---

## Conclusion

The **Bank Management System** demonstrates the complete lifecycle of relational database development, from requirement analysis and conceptual design to implementation and SQL querying. The project applies fundamental database concepts, including ER modeling, relational schema design, normalization, and SQL programming, resulting in a reliable, maintainable, and scalable database for banking operations.
