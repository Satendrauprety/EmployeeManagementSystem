CREATE DATABASE IF NOT EXISTS EmployeeManagement;
USE EmployeeManagement;

CREATE TABLE Department (
    DeptID INT AUTO_INCREMENT PRIMARY KEY,
    Dept_name VARCHAR(50),
    Location VARCHAR(50)
);

CREATE TABLE EmployeeInfo (
    EmpID INT AUTO_INCREMENT PRIMARY KEY,
    Emp_name VARCHAR(50),
    Address VARCHAR(100),
    City VARCHAR(50),
    Age INT,
    DOJ DATE,
    Designation VARCHAR(50),
    Salary INT,
    Mobile VARCHAR(15),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

CREATE TABLE SalaryHistory (
    SalaryID INT AUTO_INCREMENT PRIMARY KEY,
    EmpID INT,
    OldSalary INT,
    NewSalary INT,
    ChangeDate DATE,
    FOREIGN KEY (EmpID) REFERENCES EmployeeInfo(EmpID)
);

CREATE TABLE Attendance (
    AttendanceID INT AUTO_INCREMENT PRIMARY KEY,
    EmpID INT,
    AttendanceDate DATE,
    Status ENUM('Present','Absent','Leave'),
    FOREIGN KEY (EmpID) REFERENCES EmployeeInfo(EmpID)
);

CREATE TABLE ProjectAssignments (
    ProjectID INT AUTO_INCREMENT PRIMARY KEY,
    EmpID INT,
    ProjectName VARCHAR(50),
    StartDate DATE,
    EndDate DATE,
    Role VARCHAR(50),
    FOREIGN KEY (EmpID) REFERENCES EmployeeInfo(EmpID)
);
