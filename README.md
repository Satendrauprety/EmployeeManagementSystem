# Employee Management System - SQL Project

A comprehensive MySQL project demonstrating database design, normalization, and advanced data analysis for an organization's workforce and payroll.

## 🚀 Overview
This project models a real-world employee database system. It includes tracking departments, employee roles, locations (Noida/Gurgaon), and salary structures including bonuses[cite: 2].

## 📁 Repository Structure
- `create_tables.sql`: Database schema and table definitions[cite: 2].
- `insert_sample_data.sql`: Realistic data for testing[cite: 2].
- `practice_queries.sql`: Solutions for common business questions like Joins and Aggregations[cite: 2, 4].
- `practice_queries_advanced.sql`: Complex analysis using Window Functions, CTEs, and CASE statements[cite: 2, 3].

## 🛠 Tech Stack
- **Database:** MySQL 8.0+[cite: 2].
- **Key Concepts:** Joins, Subqueries, CTEs, Window Functions, Data Integrity[cite: 2].

## 📊 Database Schema
- **Departments**: `DeptID` (PK), `DeptName`, `Location`[cite: 2].
- **Employees**: `EmpID` (PK), `FirstName`, `LastName`, `DeptID` (FK), `Role`, `HireDate`[cite: 2].
- **Salaries**: `EmpID` (FK), `BaseSalary`, `Bonus`, `PaymentDate`[cite: 2].

## 📈 Key Insights
The queries provided can answer[cite: 2]:
1. Which department is the most expensive to maintain?[cite: 2]
2. Who are the top-ranking earners in each department?[cite: 2]
3. Which location has the highest employee density?[cite: 2]
